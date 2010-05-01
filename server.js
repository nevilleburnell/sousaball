var NodeRouter = require('./lib/node-router')
var server = NodeRouter.getServer();
var fs = require('fs');
var sys = require('sys');
var postgres = require('./lib/postgres-pure');

var conn = new postgres.Connection(process.env.DATABASE_URL || "postgres://tim@127.0.0.1/sousaball");
conn.addListener('error', sys.p);


var template_cache = {};

function render_template(template, user, level, callback) {
 var cache_key = template + "/" + user + "/" + level;
 if (false && template_cache[cache_key]) {
   callback(template_cache[cache_key]);
   return;
 }
 load_map(user, level, function (level_data) {
   var data = {
     "title": "SousaBall " + user + " - " + level,
     "user": user,
     "name": level,
     "level": JSON.stringify(level_data)
   };
   fs.readFile(__dirname + "/templates/" + template + ".xhtml", function (err, text) {
     if (err) {
       callback("Missing template: " + template);
       return;
     }
     for (var key in data) {
       if (!data.hasOwnProperty(key)) { continue; }
       text = text.replace("#{" + key + "}", data[key]);
     }
     template_cache[cache_key] = text;
     callback(text);
   });
 });
}

function load_map(user, level, callback) {
  conn.query("SELECT data FROM levels WHERE owner=:owner AND name=:name", {owner: user, name: level}, function (rows) {
    if (!rows.length) { 
      callback({error: "Missing level file", user: user, level: level});
      return;
    }
    var level_data = JSON.parse(rows[0].data);
    conn.query("SELECT data FROM tilesets WHERE owner=:owner AND name=:name", {owner: user, name: level_data.blockset}, function (rows) {
      if (!rows.length) { 
        callback({error: "Missing tileset", user: user, tileset: level_data.blockset});
        return;
      }
      level_data.blocks = JSON.parse(rows[0].data);
      callback(level_data);
    });
  });
}


function save_map(user, level, data, callback) {
  
  
  
  conn.query("UPDATE levels SET data=:data WHERE owner=:owner AND name=:name", {
    data: JSON.stringify(data),
    owner: user,
    name: level
  }, function () {
    callback();
  });
}

function play(req, res, user, level) {
 render_template('play', user, level, function (html) {
   res.simpleHtml(200, html);
 });
}

function edit(req, res, user, level) {
 render_template('edit', user, level, function (html) {
   res.simpleHtml(200, html);
 });
}

function save(req, res, user, level, data) {
 save_map(user, level, data, function () {
   res.simpleHtml(200, "Save " + user + "/" + level + ".level\n" + JSON.stringify(data));
 });
}

// function user(req, res, user) {
//
// }
//
// function create(req, res, user, level) {
//
// }

// Register routes

// Redirect root url to index page
server.get("/", NodeRouter.staticHandler(__dirname + "/public/index.html"));

// Serve js, css, and png files as static resources
server.get(/^(\/.+\.(js|css|png|ico))$/, NodeRouter.staticDirHandler(__dirname + "/public"));

//
server.get(new RegExp('^/([^/]+)/([^/]+);edit$'), edit);
server.get(new RegExp('^/([^/]+)/([^/]+)$'), play);
server.post(new RegExp('^/([^/]+)/([^/]+)$'), save, 'json');

// server.get(new RegExp('^/([^/]+)$'), user);
// server.put(new RegExp('^/([^/]+)/([^/]+)$'), create);

// Kickoff the server
var PORT = process.env.PORT || 8080;
server.listen(parseInt(PORT), "0.0.0.0", __dirname + "/");



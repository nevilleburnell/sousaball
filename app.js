var server = require('http_server.js');

function render_template(template, data, callback) {
  node.fs.cat("templates/" + template + ".xhtml").addCallback(function (text) {
    for (var key in data) {
      if (!data.hasOwnProperty(key)) { continue; }
      text = text.replace("#{" + key + "}", data[key]);
    }
    callback(text);
  });
}

function load_map(user, level, callback) {
  var folder = "data/" + user + "/";
  node.fs.cat(folder + level + ".level").addCallback(function (json) {
    var level_data = JSON.parse(json);
    node.fs.cat(folder + level_data.blockset + ".tileset").addCallback(function (json) {
      level_data.blocks = JSON.parse(json);
      callback(level_data);
    });
  });
}

function save_map(user, level, data, callback) {
  var file = new node.fs.File();
  file.open("data/" + user + "/" + level + ".level", "w");
  file.write(JSON.stringify(data));
  file.close().addCallback(callback);
}

function play(req, res, user, level) {
  puts("PLAY ACTION");
  load_map(user, level, function (level_data) {
	  var data = {
		  "title": "SousaBall " + user + " - " + level,
		  "user": user,
		  "name": level,
		  "level": JSON.stringify(level_data)
	  };
	  render_template('play', data, function (html) {
	    res.simpleHtml(200, html);
	  });
  });
}

function edit(req, res, user, level) {
  puts("EDIT ACTION");
  load_map(user, level, function (level_data) {
	  var data = {
		  "title": "SousaBall " + user + " - " + level,
		  "user": user,
		  "name": level,
		  "level": JSON.stringify(level_data)
	  };
	  render_template('edit', data, function (html) {
	    res.simpleHtml(200, html);
	  });
  });
}

function save(req, res, user, level) {
  puts("SAVE ACTION");
  req.setBodyEncoding('utf8');
  var body = "";
  req.addListener('body', function (chunk) {
    body += chunk;
  });
  req.addListener('complete', function () {
    var data = JSON.parse(body);
    save_map(user, level, data, function () {
      res.simpleHtml(200, "Save " + user + "/" + level + ".level\n" + JSON.stringify(data));
    });
  });
}

function onLoad() {

  // Register routes
  server.get(new RegExp('^/(.+)/(.+);edit$'), edit);
  server.get(new RegExp('^/(.+)/(.+)$'), play);
  server.post(new RegExp('^/(.+)/(.+)$'), save);

  // Kickoff the server
  server.listen(7001);
}



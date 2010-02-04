var server = require('node-router');
var posix = require('posix');
var file = require('file');

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
		var promise = posix.cat(__dirname + "/templates/" + template + ".xhtml");
		promise.addCallback(function (text) {
			for (var key in data) {
				if (!data.hasOwnProperty(key)) { continue; }
				text = text.replace("#{" + key + "}", data[key]);
			}
			template_cache[cache_key] = text;
			callback(text);
		});
		promise.addErrback(function () {
			callback("Missing template: " + template);
		});
	});
}

function load_map(user, level, callback) {
	var folder = __dirname + "/data/" + user + "/";
	var promise = posix.cat(folder + level + ".level");
	promise.addCallback(function (json) {
		var level_data = JSON.parse(json);
		promise = posix.cat(folder + level_data.blockset + ".tileset");
		promise.addCallback(function (json) {
			level_data.blocks = JSON.parse(json);
			callback(level_data);
		});
		promise.addErrback(function () {
			callback({error: "Missing tileset", user: user, tileset: level_data.blockset});
		});
	});
	promise.addErrback(function () {
		callback({error: "Missing level file", user: user, level: level});
	});
}

function save_map(user, level, data, callback) {
  var filename = "data/" + user + "/" + level + ".level";
	file.write(filename, JSON.stringify(data)).addCallback(callback);
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
server.get(new RegExp('^/$'), function (req, res) {
	server.staticHandler(req, res, __dirname + "/public/index.html");
});
// Serve js, css, and png files as static resources
server.get(new RegExp('^(/.+\.(js|css|png))$'), function (req, res, path) {
	server.staticHandler(req, res, __dirname + "/public" + path);
});

//
server.get(new RegExp('^/([^/]+)/([^/]+);edit$'), edit);
server.get(new RegExp('^/([^/]+)/([^/]+)$'), play);
server.post(new RegExp('^/([^/]+)/([^/]+)$'), save, 'json');

// server.get(new RegExp('^/([^/]+)$'), user);
// server.put(new RegExp('^/([^/]+)/([^/]+)$'), create);

// Kickoff the server
server.listen(7001, "127.0.0.1", __dirname + "/");



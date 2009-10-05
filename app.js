var server = require('http_server.js');

var template_cache = {};

function render_template(template, user, level, callback) {
	var cache_key = template + "/" + user + "/" + level;
	if (template_cache[cache_key]) {
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
		var promise = node.fs.cat("templates/" + template + ".xhtml");
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
	var folder = "data/" + user + "/";
	var promise = node.fs.cat(folder + level + ".level");
	promise.addCallback(function (json) {
		var level_data = JSON.parse(json);
		promise = node.fs.cat(folder + level_data.blockset + ".tileset");
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
	var key = user + "/" + level;
	template_cache = {};
	node.fs.open("data/" + user + "/" + level + ".level", node.O_TRUNC | node.O_WRONLY | node.O_CREAT, 00600).addCallback(function (fd) {
		node.fs.write(fd, JSON.stringify(data)).addCallback(function (len) {
			node.fs.close(fd);
			callback();
		});
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
server.get(new RegExp('^/$'), function (req, res) {
	server.staticHandler(req, res, "public/index.html");
});
// Serve js, css, and png files as static resources
server.get(new RegExp('^(/.+\.(js|css|png))$'), function (req, res, path) {
	server.staticHandler(req, res, "public" + path);
});

// 
server.get(new RegExp('^/([^/]+)/([^/]+);edit$'), edit);
server.get(new RegExp('^/([^/]+)/([^/]+)$'), play);
server.post(new RegExp('^/([^/]+)/([^/]+)$'), save, 'json');

// server.get(new RegExp('^/([^/]+)$'), user);
// server.put(new RegExp('^/([^/]+)/([^/]+)$'), create);

// Kickoff the server
server.listen(7001);



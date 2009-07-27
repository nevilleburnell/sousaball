var NOT_FOUND = "Not Found\n";

function notFound(req, res, message) {
  res.sendHeader(404, [ ["Content-Type", "text/plain"]
                      , ["Content-Length", NOT_FOUND.length]
                      ]);
  res.sendBody(message || NOT_FOUND);
  res.finish();
}

var routes = [];

function addRoute(method, pattern, handler) {
  routes.push({
    method: method,
    pattern: pattern,
    handler: handler
  });
}

exports.get = function (pattern, handler) {
  return addRoute("GET", pattern, handler);
};

exports.post = function (pattern, handler) {
  return addRoute("POST", pattern, handler);
};


var server = node.http.createServer(function (req, res) {
  var path = req.uri.path;
  puts(req.method + " " + path);

  res.simpleHtml = function (code, body) {
    res.sendHeader(code, [ ["Content-Type", "text/html"]
                         , ["Content-Length", body.length]
                         ]);
    res.sendBody(body);
    res.finish();
  };
  
  res.notFound = function (message) {
    notFound(req, res, message);
    return;
  }

  for (var i = 0, l = routes.length; i < l; i += 1) {
    var route = routes[i];
    if (req.method === route.method) {
      var match = path.match(route.pattern);
      if (match && match[0].length > 0) {
        match.shift();
        match.unshift(res);
        match.unshift(req);
        route.handler.apply(this, match);
        return;
      }
    }
  }
  
  notFound(req, res);
});

exports.listen = function (port, host) {
  server.listen(port, host);
  puts("Server at http://" + (host || "127.0.0.1") + ":" + port.toString() + "/");
};

exports.close = function () { server.close(); };



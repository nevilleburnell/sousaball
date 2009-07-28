# SousaBall

SousaBall is an experiment into social networking using JavaScript and the canvas tag.

A live server it hosted at <http://sousaball.creationix.com/>

## Technical Background

The front-end uses canvas, xhtml, css, and a healthy dose of JavaScript.  Nothing new here, except maybe for the canvas usage.

The back-end however is built using node js <http://tinyclouds.org/node/>.  This is a purely evented JavaScript framework for building servers.  The app.js file is actually an HTTP server, in production it can run behind a reverse proxy to offload downloading of the static resources.  In development, it can serve it's own files.  Node is extremely fast since it's based on events and uses the Google V8 JavaScript engine.  The node api should look familiar to ruby developers. It's I/O module is modeled after Ruby's standard library and since everything is asynchronous there are many callbacks that look a lot like ruby blocks.

## Playing the Game

Sousaball is a side-view platform game.  The goal depends on the programming of the level, but usually it consists of getting all the coins and advancing to the next level.

Eventually the project will evolve into a social networking site where members create and share levels.  They will be able to link to each others levels. Also when playing a level, there will be a option to see others in the same "room" and interact with them in real-time.  That way you can work as a team to solve some puzzle.

## The Editor

SousaBall comes with a web based level editor.  Currently it can only edit the tiles of existing levels and there is no authentication.  To get to it, simple append ;edit to the end of any level url and you'll be editing that level.  Please note that I revert all changes made to the public level sets on a regular basis on my hosted site. If you would like a level created for your own use, send me an email and I'll create it.  Eventually I'll have this completely automated through the web interface and you'll be able to create your own levels once registered and signed in.

## Running your own server

To run the server, simple type `node app.js` on the command line assuming you have node installed and in your path.  This will start a server on port 7001. You can change this port easily in the code.

For a production server, I recommend using something like nginx or apache to serve the static files under the public folder and reverse proxy the rest to the node app on port 7001.  Here is my nginx config for reference.

    server {
      listen   80;
      server_name sousaball.creationix.com;

      root   /home/tim/www/sousaball.creationix.com/public;

      location / {
        if (-f $request_filename/index.html) {
          rewrite (.*) $1/index.html break;
        }

        if (!-f $request_filename) { 
          proxy_pass  http://127.0.0.1:7001;
        }
      }
    }

## Roadmap

 * User Registration
 * Level authentication
 * Ability to program secrets/triggers through the GUI editor
 * Ability to create new levels through the website
 * Informational pane around game frame with more info
 * Social networking features like bookmarking, friending, messaging, etc...
 * Improve the physics engine
   * Allow for moving platforms
   * Add in enemies

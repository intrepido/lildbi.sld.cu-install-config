/**
 * Module dependencies.
 */
var io = require('socket.io'),
	connect = require('connect'),
	onlineUsers = require('online-users'),
	//chat = require('chat'),
	nodeCouchDB = require("node-couchdb"),
	moment = require("moment");
	js = require("jquery");

var couch = new nodeCouchDB("localhost", 5984);
var app = connect().use(connect.static('public')).listen(3000);
var socketIO = io.listen(app);

onlineUsers.set_sockets(socketIO.sockets);
onlineUsers.set_couch_ref(couch);
onlineUsers.set_moment_ref(moment);
onlineUsers.set_js_ref(js);

socketIO.sockets.on('connection', function(socket) {

	onlineUsers.connect_users({
		socket : socket,
		userid : socket.id
	});
	
	/*
	chat.connect_users({
		socket : socket,
		userid : socket.id
	});*/

});
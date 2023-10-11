var express = require('express');
var app = express();
var server = app.listen(3001);

app.use(express.static('public'));

console.log("Socket server is running.");

var socket = require('socket.io');
var io = socket(server);

io.sockets.on('connection', newConnection);

function newConnection(socket) {
	console.log('new connection: ' + socket.id);
	socket.on('mouse', mouseMsg);

	function mouseMsg(data) {
		socket.broadcast.emit('mouse', data);
		//io.sockets.emit('mouse', data);
		console.log(data);
	}

}
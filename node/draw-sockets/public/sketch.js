var socket

function setup() {
	createCanvas(600,400);
	background(51);
	socket = io.connect('http://localhost:3001');
	socket.on('mouse', newDrawing);
}

function draw() {
}

function mouseDragged() {
	console.log('Sending: ' + mouseX + ',' + mouseY);
	var data = {x:mouseX, y:mouseY};
	socket.emit('mouse', data);

	noStroke();
	fill(255);
	ellipse(mouseX, mouseY, 6, 6);
}

function newDrawing(data) {
	noStroke();
	fill(255, 0, 100);
	ellipse(data.x, data.y, 6, 6);

}
var gameNs = {}

function main()
{
  InitCanvas()
  var Game = new game()
  gameNs.game = Game
  Game.InitWorld()
  Game.update()
  Game.draw()

}

function InitCanvas()
{
  document.addEventListener("Keydown", this.keyDownHandler, true)
  var canvas = document.createElement("canvas")
  canvas.id = 'mycanvas'
  canvas.width = window.innerWidth
  canvas.height = window.innerHeight
  var ctx = canvas.getContext("2d")
  document.body.appendChild(canvas)
}
window.addEventListener("keydown", function(e) {
    // Space and arrow keys
    if([32, 37, 38, 39, 40].indexOf(e.keyCode) > -1) {
        e.preventDefault();
    }
}, false);

function clamp(value,min,max)
{
  if(max<min) {
 		var temp = min;
 		min = max;
 		max = temp;
 	}
 	return Math.max(min, Math.min(value, max));
}

function draw(game)
{
  game.draw()
}

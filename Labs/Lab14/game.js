class game
{
  constructor()
  {
    console.log("game constructed")
    gameNs.particles  =[]

    for (var i =0; i<100;i++)
    {
      gameNs.particles.push(new Particle(500,100))
    }

  }

  InitWorld()
  {
    console.log("game initialising")

  }

  update()
  {
    var canvas  =document.getElementById('mycanvas')
    var ctx = canvas.getContext('2d')
    ctx.clearRect(0,0,canvas.width,canvas.height)
    window.requestAnimationFrame(gameNs.game.update)
    for (var i =0; i<100; i++)
    {
      gameNs.particles[i].run();
    }

  }

  draw()
  {

  }
}

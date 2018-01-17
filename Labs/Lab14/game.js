class game
{
  constructor()
  {
    console.log("game constructed")
    gameNs.particles  =[]

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

    if(gameNs.particles.length<1000)
    {
      gameNs.particles.push(new Particle(300,100))
    }

    for (var i =0; i<gameNs.particles.length; i++)
    {
      gameNs.particles[i].run();
      if(gameNs.particles[i].lifespan<0.1)
      {
        gameNs.particles.splice(i,1)
      }
    }

  }

  draw()
  {

  }
}

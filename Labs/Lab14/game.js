class game
{
  constructor()
  {
    console.log("game constructed")
    this.ps = new ParticleSystem()

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

    gameNs.game.ps.update()

  }

  draw()
  {

  }
}

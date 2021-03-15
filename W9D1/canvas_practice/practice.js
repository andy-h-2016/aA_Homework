document.addEventListener("DOMContentLoaded", function(){
  let canvas = document.getElementById('mycanvas');
  let ctx = canvas.getContext('2d');

  // ctx.fillStyle = "green";
  // ctx.fillRect(20, 20, 500, 500);

  ctx.beginPath();
  ctx.arc(250, 250, 100, 0, 360);
  ctx.strokeStyle = "red";
  ctx.lineWidth = 5;
  ctx.stroke();

});

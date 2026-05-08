void game() {
  background(0, 255, 0);
  
  text("Score: " + score, width/2, 50);
  text( "Lives: " + lives, width/2, 100);
  
  stroke(80);
  strokeWeight(5);
  noFill();
  circle(50, 50, 50);
  fill(80);
  rect(40, 40, 5, 20, 100); 
  rect(55, 40, 5, 20, 100);
  
  noStroke();
  if(lives == 0) {
    mode = GAMEOVER;
  }
  
  
  
  //move
  x = x + vx;
  y = y + vy;
  
  //bounce
  if(x < 50 || x > width-d/2) {
    vx = vx * -1;
  }
  if(y < 50 || y > width-d/2) {
    vy = vy * -1;
  }
  
  //target
  fill(0);
  circle(x, y, d);
  
}

void gameClicks() {
  if(dist(mouseX, mouseY, x, y) < 50) {
    score = score + 1;
  } else if(dist(mouseX, mouseY, 50, 50) < 25){
  } else {
    lives = lives - 1;
  }
}

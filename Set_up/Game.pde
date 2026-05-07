void game() {
  background(0, 255, 0);
  //move
  x = x + vx;
  y = y + vy;
  
  //bounce
  if(x < 50 || x > 850) {
    vx = vx * -1;
  }
  if(y < 50 || y > 850) {
    vy = vy * -1;
  }
  
  //target
  fill(0);
  circle(x, y, d);
  
}

void gameClicks() {
  mode = GAMEOVER;
}

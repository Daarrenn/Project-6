void gameover() {
  background(255, 0, 0);
  score = 0;
  text("Final score: " +finalScore, width/2, height/2 - 100);
  text("High score: " +highScore, width/2, height/2 + 50);
  lives = 3;
  x = 450;
  y = 450;
  d = 100;
  vx = random(-5, 5);
  vy = random(-5, 5);
}



void gameoverClicks() {
  mode = INTRO;
}

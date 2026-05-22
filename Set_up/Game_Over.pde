void gameover() {
  MUSIC.rewind();
  FAILURE.play();
  background(255, 0, 0);
  score = 0;
  fill(255);
  textSize(50);
  text("Final score: " +finalScore, width/2, height/2 - 100);
  text("High score: " +highScore, width/2, height/2 + 50);
  textSize(70);
  text("Game Over!", width/2, 150);
  lives = 3;
  x = 450;
  y = 450;
  d = 100;
  vx = random(-5, 5);
  vy = random(-5, 5);
  fill(255);
  squareTactile(100, 350, 700, 850);
  rect(100, 700, 250, 150); 
  stroke(0);
  squareTactile(550, 800, 700, 850);
  rect(550, 700, 250, 150);
  stroke(0);
  fill(0);
  textSize(50);
  text("New Game", 225, 775);
  text("Rage Quit", 675, 775);
}



void gameoverClicks() {
  if (mouseX > 100 && mouseX < 350 && mouseY > 700 && mouseY < 850){
    mode = INTRO;
  }
  if (mouseX > 550 && mouseX < 800 && mouseY > 700 && mouseY < 850){
    exit();
  }
}

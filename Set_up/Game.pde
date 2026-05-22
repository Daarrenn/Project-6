void game() {
  MUSIC.play();
  background(gameColour);
  imageMode(CENTER);
  
  textSize(30);
  stroke(0);
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
  finalScore = score;
  
  if (score > highScore) {
    highScore = score;
  }
  
  
  
  //move
  x = x + vx;
  y = y + vy;
  
  //bounce
  if(x < d/2 || x > width-d/2) {
    vx = vx * -1;
  }
  if(y < d/2 || y > width-d/2) {
    vy = vy * -1;
  }
  
  //target
  if(ballColour == 1){
    noFill();
  } else if(ballColour == 2){
    fill(255);
  } else if(ballColour == 3){
    fill(0);
  }
  stroke(0);
  circle(x, y, d);
  if(CAT == true) {
    image(cat, x, y, d, d);
  }
  if(DOG == true) {
    image(dog, x, y, d, d);
  }
  
}

void gameClicks() {
  if(dist(mouseX, mouseY, x, y) < d/2) {
    score = score + 1;
    vx = vx * 1.1;
    vy = vy * 1.1;
    SUCCESS.rewind();
    SUCCESS.play();
  } else if(dist(mouseX, mouseY, 50, 50) < 25) {
  mode = PAUSE; 
  } else {
    lives = lives - 1;
    FAILURE.rewind();
    FAILURE.play();
  }
}

void intro() {
  background(introColour);
  fill(0);
  stroke(0);
  textSize(75);
  text("Clicker Game", width/2, 100);


  noFill();  
  strokeWeight(5);
  fill(255);
  squareTactile(100, 400, 400, 600);
  rect(100, 400, 300, 200);
  stroke(0);
  squareTactile(500, 800, 400, 600);
  rect(500, 400, 300, 200);
  stroke(0);
  fill(0);
  text("START", 250, 500);
  text("OPTIONS", 650, 500);
}

void introClicks() {
  if (mouseX > 100 && mouseX < 400 && mouseY > 400 && mouseY < 600){
    mode = GAME;
  }
  if (mouseX > 500 && mouseX < 800 && mouseY > 400 && mouseY < 600){
    mode = OPTIONS;
  }
}

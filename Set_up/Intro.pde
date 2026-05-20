void intro() {
  background(introColour);
  fill(0);
  stroke(0);
  textSize(75);
  text("Clicker Game", width/2, 100);


  noFill();  
  strokeWeight(5);
  rect(100, 400, 300, 200);
  rect(500, 400, 300, 200);
}

void introClicks() {
  if (mouseX > 100 && mouseX < 300 && mouseY > 400 && mouseY < 600){
    mode = GAME;
  }
  if (mouseX > 500 && mouseX < 700 && mouseY > 400 && mouseY < 600){
    mode = OPTIONS;
  }
}
void mouseDragged() {
if (mouseX > 75 && mouseX < 125 && mouseY > 250 && mouseY < 550) {
    sliderY = mouseY;
}
}

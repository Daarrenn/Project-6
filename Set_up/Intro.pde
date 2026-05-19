void intro() {
  background(introColour);
  fill(0);
  textSize(75);
  text("Clicker Game", width/2, 100);
  //slider
  line(100, 250, 100, 550);
  circle(100, sliderY, 30);
  d = map(sliderY, 250, 550, 200, 50);
  //show circle
  noFill();
  strokeWeight(5);
  circle(width/2, height/2 - 50, 300);
  circle(width/2, height/2 - 50, d);

  
  rect(300, 600, 300, 200);
}

void introClicks() {
  if (mouseX > 300 && mouseX < 600 && mouseY > 600 && mouseY < 800){
  mode = GAME;
}
}
void mouseDragged() {
if (mouseX > 75 && mouseX < 125 && mouseY > 250 && mouseY < 550) {
    sliderY = mouseY;
}
}

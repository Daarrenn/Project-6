void intro() {
  background(introColour);
  
  rect(300, 600, 300, 200);
}

void introClicks() {
  if (mouseX > 300 && mouseX < 600 && mouseY > 600 && mouseY < 800){
  mode = GAME;
}
}

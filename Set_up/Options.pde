void options() {
  background(introColour);
  fill(0);
  stroke(0);
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
  if(CAT == true) {
    image(cat, width/2, height/2 - 50, d, d);
  }
  if(DOG == true) {
    image(dog, width/2, height/2 - 50, d, d);
  }
  //pics
  imageMode(CENTER);
  rect(675, 225, 150, 150);
  image(cat, 750, 300, 150, 150);
  rect(675, 425, 150, 150);
  image(dog, 750, 500, 150, 150);


  
  rect(300, 600, 300, 200);
}

void optionsClicks() {
  if (mouseX > 300 && mouseX < 600 && mouseY > 600 && mouseY < 800){
    mode = INTRO;
  }
  if (mouseX > 675 && mouseX < 825 && mouseY > 225 && mouseY < 375) {
    CAT = true;
    DOG = false;
  }
  if (mouseX > 675 && mouseX < 825 && mouseY > 425 && mouseY < 575) {
    CAT = false;
    DOG = true;
  }
}

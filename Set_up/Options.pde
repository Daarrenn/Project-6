void options() {
  background(introColour);
  fill(0);
  stroke(0);
  textSize(75);
  text("Clicker Game", width/2, 100);
  //slider
  line(75, 250, 75, 550);
  circleTactile(75, sliderY, 15);
  circle(75, sliderY, 50);
  d = map(sliderY, 250, 550, 200, 50);
  stroke(0);
  //show circle
  noFill();
  strokeWeight(5);
  circle(width/2, height/2 - 50, 300);
  if(ballColour == 1){
    noFill();
  } else if(ballColour == 2){
    fill(255);
  } else if(ballColour == 3){
    fill(0);
  }
  circle(width/2, height/2 - 50, d);
  fill(255);
  if(CAT == true) {
    image(cat, width/2, height/2 - 50, d, d);
  }
  if(DOG == true) {
    image(dog, width/2, height/2 - 50, d, d);
  }
  //pics
  imageMode(CENTER);
  squareTactile(675, 825, 225, 375);
  rect(675, 225, 150, 150);
  stroke(0);
  image(cat, 750, 300, 150, 150);
  squareTactile(675, 825, 425, 575);
  rect(675, 425, 150, 150);
  stroke(0);
  image(dog, 750, 500, 150, 150);

  //start button
  squareTactile(300, 600, 600, 800);
  rect(300, 600, 300, 200);
  stroke(0);
  
  //colours
  noFill();
  circleTactile(200, 300, 25);
  circle(200, 300, 50);
  stroke(0);
  fill(255);
  circleTactile(200, 400, 25);
  circle(200, 400, 50);
  stroke(0);
  circleTactile(200, 500, 25);
  fill(0);
  circle(200, 500, 50);
  stroke(0);
  
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
  if(dist(mouseX, mouseY, 200, 300) < 25){
    ballColour = 1;
  }
  if(dist(mouseX, mouseY, 200, 400) < 25){
    ballColour = 2;
  }
  if(dist(mouseX, mouseY, 200, 500) < 25){
    ballColour = 3;
  }
}

void mouseDragged() {
if (mouseX > 50 && mouseX < 100 && mouseY > 250 && mouseY < 550) {
    sliderY = mouseY;
  }
}

void pause() {
  MUSIC.pause();
  textSize(60);
  text("PAUSED", width/2, height/3 - 30);
  textSize(30);
  text("click anywhere to unpause", width/2, height/3 + 50);
  
  countdown = countdown + counting;
  
  textSize(50);
  if(countdown > 0 && countdown < 61) {
    text("3", width/2, height/2);
  } else if(countdown > 60 && countdown < 121) {
    noStroke();
    fill(gameColour);
    circle(width/2, height/2, 50);
    fill(0);
    text("2", width/2, height/2);
  } else if(countdown > 120 && countdown < 181) {
    noStroke();
    fill(gameColour);
    circle(width/2, height/2, 50);
    fill(0);
    text("1", width/2, height/2);
  }
  
  if(countdown > 180) {
    fill(0, 255, 0);
    mode = GAME;
    countdown = 0;
  }
}

void pauseClicks() {
  counting = 1;
}

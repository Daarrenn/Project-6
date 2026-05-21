

//images
PImage cat;
PImage dog;

boolean CAT = true;
boolean DOG = false;

//variables
color introColour = #EADF76;
color gameColour = #CEF29D;
color tactileColour =#F7F35F;



int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;
final int OPTIONS = 4;



//location 
float x = 450;
float y = 450;

//clicker size
float d = 100;
float sliderY = 400;
float size;

//clicker colour
int ballColour = 1;

//lives and score
int score = 0;
int finalScore;
int highScore = 0;
int lives = 3;


float vx = random(-5, 5);
float vy = random(-5, 5);

//pause countdown
float countdown = 0;
float counting = 0;

//set up
void setup() {
  size(900, 900);
  mode = INTRO;
  textAlign(CENTER, CENTER);
  
  cat = loadImage("cat.png");
  dog = loadImage("dog.png");


}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode ==  PAUSE){
    pause();
  } else if (mode == GAMEOVER){
    gameover();
  } else if (mode == OPTIONS){
    options();
  } else {
    println("oh no" + mode);
  }
}

void squareTactile(int x, int x2, int y, int y2) {
  if(mouseX > x && mouseX < x2 && mouseY > y && mouseY < y2) {
    stroke(tactileColour);
  } else {
    stroke(0);
  }
}

void circleTactile(int x, float y, int size) {
  if (dist(x, y, mouseX, mouseY) < size) {
    stroke(tactileColour);
  } else {
    stroke(0);
  }
}

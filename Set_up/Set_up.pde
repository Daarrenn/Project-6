



//variables
color introColour = #EADF76;



int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;



//location 
float x = 450;
float y = 450;
float d = 100;

//lives and score
int score = 0;
int lives = 3;

float a = random(0, 2*PI);
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
  } else {
    println("oh no" + mode);
  }
}

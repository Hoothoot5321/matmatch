import processing.sound.*;
SoundFile click_sound;
SoundFile succes_sound;
SoundFile err_sound;
SoundFile box_sound;

ProgramColors current_colors;

float title_font_size = 128;
float button_font_size = 64;
float base_font_size = 48;

float button_height = 120;
float button_width = 360;

float border_width = 15;

boolean dark_mode = true;

String username = "";


DifficultyHolder diff_holder;

float px;

int min_val = -20;
int max_val = 20;

float old_time = 0;

int old_num1 = 999;


int old_id1 = 999;

boolean old_is_equation = false;

int cur_screen = 0;

Screen[] screens;

Screen test_screen;

String click_link = "ClickSound.wav";
String sucess_link = "SuccesSound.wav";
String err_link = "MissSound.wav";
String box_link = "BoxHit.wav";

void setup() {
  size(1620, 920);
  click_sound = new SoundFile(this, click_link);
  succes_sound = new SoundFile(this, sucess_link);
  err_sound = new SoundFile(this, err_link);
  box_sound = new SoundFile(this, box_link);

  diff_holder = new DifficultyHolder();

  px = width/1620.0;



  title_font_size = title_font_size*px;
  button_font_size = button_font_size*px;
  base_font_size = base_font_size*px;
  button_height = button_height*px;
  button_width = button_width*px;

  current_colors = defineDarkColors();


  screens = new Screen[0];

  screens = (Screen[])append(screens, createMainScreen());
  screens = (Screen[])append(screens, createLeaderBoardScreen());
  screens = (Screen[])append(screens, createGameScreen());
  screens = (Screen[])append(screens, createScoreScreen());


  test_screen = createGameScreen();
  strokeWeight(border_width*px);

  textAlign(CENTER);
  rectMode(CENTER);
}


void draw() {
  screens[cur_screen].update();
  screens[cur_screen].showScreen();
  /*
  test_screen.update();
   test_screen.showScreen();
   */
}

void mousePressed() {
  screens[cur_screen].registerClick(mouseX, mouseY);
  //test_screen.registerClick(mouseX, mouseY);
}

void mouseMoved() {
  screens[cur_screen].registerHover(mouseX, mouseY);
  //test_screen.registerHover(mouseX, mouseY);
}

void keyPressed() {
  screens[cur_screen].registerKey(key);
  //test_screen.registerKey(key);
}

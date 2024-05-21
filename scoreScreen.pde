Screen createScoreScreen() {
  Screen score_screen = new Screen();

  TextElem title_txt = new TextElem(width/2, height/2-300*px, "Tid: "+nf(old_time/1000, 0, 2), title_font_size, false, no_func);

  score_screen.addElem(title_txt);

  TextElem input_text = new TextElem(width/2-250*px, height/2-140*px, "Brugernavn:", button_font_size, false, no_func);

  score_screen.addElem(input_text);

  InputElem test_input = new InputElem(width/2+220*px, height/2-160*px, 1.5*button_width, button_height, no_func, no_func, change_username_func);

  score_screen.addElem(test_input);

  ButtonElem save_button = new ButtonElem(width/2, height/2*px, button_width, button_height, no_func, save_score_func, no_func, "Save");

  score_screen.addElem(save_button);

  ButtonElem retry_button = new ButtonElem(width/2, height/2+150*px, button_width, button_height, no_func, create_nav_func(2), no_func, "Retry");

  score_screen.addElem(retry_button);

  ButtonElem main_button = new ButtonElem(width/2, height/2+300*px, button_width, button_height, no_func, create_nav_func(0), no_func, "Main");

  score_screen.addElem(main_button);
  
  ButtonElem theme_button =  new ButtonElem(width/2+450*px, height/2-350*px, button_width/3, button_height/2, no_func, toggle_dark_func, no_func, "Col");

  score_screen.addElem(theme_button);


  return score_screen;
};

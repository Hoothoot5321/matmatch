Screen createMainScreen() {

  Screen main_screen = new Screen();


  TextElem title_txt = new TextElem(width/2, height/2-300*px, "MatMatch", title_font_size, false, no_func);

  main_screen.addElem(title_txt);

  ToggleElem test_toggle_1 = new ToggleElem(width/2-450*px, height/2-200*px, button_width/2, button_height, no_func, create_diff_func(1), "+");

  ToggleElem test_toggle_2 = new ToggleElem(width/2-150*px, height/2-200*px, button_width/2, button_height, no_func, create_diff_func(2), "-");

  ToggleElem test_toggle_3 = new ToggleElem(width/2+150*px, height/2-200*px, button_width/2, button_height, no_func, create_diff_func(3), "*");

  ToggleElem test_toggle_4 = new ToggleElem(width/2+450*px, height/2-200*px, button_width/2, button_height, no_func, create_diff_func(4), "/");

  main_screen.addElem(test_toggle_1);

  main_screen.addElem(test_toggle_2);

  main_screen.addElem(test_toggle_3);

  main_screen.addElem(test_toggle_4);

  ButtonElem start_button = new ButtonElem(width/2, height/2, button_width, button_height, no_func, create_nav_func(2), no_func, "Start");

  main_screen.addElem(start_button);

  ButtonElem leader_board_button = new ButtonElem(width/2, height/2+150*px, button_width, button_height, no_func, create_nav_func(1), no_func, "Leaderboard");

  main_screen.addElem(leader_board_button);

  ButtonElem exit_button = new ButtonElem(width/2, height/2+300*px, button_width, button_height, no_func, exit_func, no_func, "Quit");

  main_screen.addElem(exit_button);
  
  ButtonElem theme_button =  new ButtonElem(width/2+450*px, height/2-350*px, button_width/3, button_height/2, no_func, toggle_dark_func, no_func, "Col");

  main_screen.addElem(theme_button);

  return main_screen;
};

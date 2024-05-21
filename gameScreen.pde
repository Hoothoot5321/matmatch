Screen createGameScreen() {

  TextElem title_txt = new TextElem(width/2, height/2-300*px, "This is game_screen", title_font_size, false, timer_func);

  old_time = millis();
  old_num1 = 999;

  old_id1 = 999;

  old_is_equation = false;

  GameScreen game_screen = new GameScreen();

  game_screen.addElem(title_txt);

  float side_length = 110;

  float gap = 60;

  PVector[] vec_arr = new PVector[0];

  for (int x = 0; x<6; x++) {
    for (int y = 0; y<4; y++) {

      PVector new_vec = new PVector(x*(side_length*1.5+gap)*px+220*px, y*(side_length+gap)*px+300*px);
      vec_arr = (PVector[])append(vec_arr, new_vec);
    }
  }
  for (int i = 0; i<24; i++) {
    int rand_pos = int(random(0, 24));
    PVector old_val = vec_arr[i];
    vec_arr[i] = vec_arr[rand_pos];
    vec_arr[rand_pos] = old_val;
  }

  for (int i = 0; i<24; i+=2) {

    int eq_type = diff_holder.getDiff();

    MathHolder holder = makeMath(eq_type);

    String[] heads = holder.heads;
    int[] nums = holder.nums;

    GameElem eq_button = new GameElem(vec_arr[i].x, vec_arr[i].y, side_length*px*1.5, side_length*px, no_func, no_func, heads[0], true, eq_type, nums[0], nums[1], i);

    game_screen.addGameElem(eq_button);

    GameElem ans_button = new GameElem(vec_arr[i+1].x, vec_arr[i+1].y, side_length*px*1.5, side_length*px, no_func, no_func, heads[1], false, eq_type, nums[2], nums[1], i+1);

    game_screen.addGameElem(ans_button);
  }

  ButtonElem back_button =  new ButtonElem(width/2-650*px, height/2-350*px, button_width/3, button_height/2, no_func, create_nav_func(0), no_func, "Back");

  game_screen.addElem(back_button);

  ButtonElem re_button =  new ButtonElem(width/2+650*px, height/2-350*px, button_width/3, button_height/2, no_func, create_nav_func(2), no_func, "Retry");

  game_screen.addElem(re_button);

  ButtonElem theme_button =  new ButtonElem(width/2+450*px, height/2-350*px, button_width/3, button_height/2, no_func, toggle_dark_func, no_func, "Col");

  game_screen.addElem(theme_button);

  return game_screen;
}

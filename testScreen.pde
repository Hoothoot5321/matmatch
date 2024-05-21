Screen createTestScreen() {

  TextElem title_txt = new TextElem(width/2, height/2-300*px, "This is title text", title_font_size, false, no_func);

  TextElem button_txt = new TextElem(width/2, height/2-150*px, "This is button text", button_font_size, true, no_func);

  TextElem base_txt = new TextElem(width/2, height/2-75*px, "This is base text", base_font_size, false, no_func);

  ButtonElem test_button = new ButtonElem(width/2, height/2, button_width, button_height, no_func, toggle_dark_func, no_func, "Click me");

  InputElem test_input = new InputElem(width/2, height/2+200*px, button_width, button_height, no_func, no_func, change_username_func);

  ButtonElem test_username = new ButtonElem(width/2, height/2+400*px, button_width, button_height, no_func, test_diff_func, no_func, "Check username");

  ToggleElem test_toggle_1 = new ToggleElem(width/2-400*px, height/2-200*px, button_width/2, button_height, no_func, create_diff_func(1), "+");

  ToggleElem test_toggle_2 = new ToggleElem(width/2-400*px, height/2, button_width/2, button_height, no_func, create_diff_func(2), "-");

  ToggleElem test_toggle_3 = new ToggleElem(width/2-400*px, height/2+200*px, button_width/2, button_height, no_func, create_diff_func(3), "*");

  ToggleElem test_toggle_4 = new ToggleElem(width/2-400*px, height/2+400*px, button_width/2, button_height, no_func, create_diff_func(4), "/");

  Screen test_screen = new Screen();

  test_screen.addElem(title_txt);

  test_screen.addElem(button_txt);

  test_screen.addElem(base_txt);

  test_screen.addElem(test_button);

  test_screen.addElem(test_input);

  test_screen.addElem(test_username);

  test_screen.addElem(test_toggle_1);

  test_screen.addElem(test_toggle_2);

  test_screen.addElem(test_toggle_3);

  test_screen.addElem(test_toggle_4);

  return test_screen;
};

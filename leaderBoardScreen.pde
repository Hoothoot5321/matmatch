Screen createLeaderBoardScreen() {

  Screen leader_board_screen = new Screen();

  TextElem title_txt = new TextElem(width/2, height/2-300*px, "Leaderboard", title_font_size, false, no_func);

  leader_board_screen.addElem(title_txt);

  Table table = loadTable("scores.csv", "header");

  User[] users = new User[0];

  for (TableRow row : table.rows()) {
    User new_user = new User(row.getString("username"), row.getFloat("time"));
    users = (User[])append(users, new_user);
  }

  boolean swap = true;

  while (swap) {
    swap = false;
    for (int i = 0; i< users.length-1; i++) {
      if (users[i].time > users[i+1].time) {
        User old_user = users[i];
        users[i] = users[i+1];
        users[i+1] = old_user;
        swap = true;
      };
    };
  }

  int maks = 5;

  if (users.length < 5) {
    maks = users.length;
  }

  for (int i = 0; i<maks; i++) {
    TextElem score_text = new TextElem(width/2, height/2+i*70*px-200*px, users[i].username+":"+nf(users[i].time, 0, 2), button_font_size, false, no_func);
    leader_board_screen.addElem(score_text);
  }

  ButtonElem retry_button = new ButtonElem(width/2, height/2+200*px, button_width, button_height, no_func, create_nav_func(2), no_func, "Retry");

  leader_board_screen.addElem(retry_button);

  ButtonElem main_button = new ButtonElem(width/2, height/2+350*px, button_width, button_height, no_func, create_nav_func(0), no_func, "Main");

  leader_board_screen.addElem(main_button);

  ButtonElem theme_button =  new ButtonElem(width/2+450*px, height/2-350*px, button_width/3, button_height/2, no_func, toggle_dark_func, no_func, "Col");

  leader_board_screen.addElem(theme_button);



  return leader_board_screen;
}

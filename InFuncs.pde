interface InFunc {
  public void run(ScreenElem elem);
}


InFunc no_func = new InFunc() {
  public void run(ScreenElem elem) {
    return;
  }
};

InFunc toggle_dark_func = new InFunc() {
  public void run(ScreenElem elem) {
    click_sound.play();
    if (dark_mode) {
      dark_mode = !dark_mode;
      current_colors = defineLightColors();
    } else {
      dark_mode = !dark_mode;
      current_colors = defineDarkColors();
    }
  }
};

InFunc change_username_func = new InFunc() {
  public void run(ScreenElem elem) {
    username = elem.getText();
  }
};

InFunc test_username_func = new InFunc() {
  public void run(ScreenElem elem) {
    println(username);
  }
};

InFunc test_diff_func = new InFunc() {
  public void run(ScreenElem elem) {
    diff_holder.show();
  }
};

InFunc timer_func = new InFunc() {
  public void run(ScreenElem elem) {
    float mil = millis()-old_time;

    float sec = mil/1000;

    String time = nf(sec, 0, 2);

    elem.setText(time);
  }
};
InFunc exit_func = new InFunc() {
  public void run(ScreenElem elem) {
    click_sound.play();
    exit();
  }
};



InFunc create_diff_func(int num) {
  return new InFunc() {
    public void run(ScreenElem elem) {
      click_sound.play();
      switch(num) {
      case 1:
        diff_holder.plus = elem.getClicked();
        break;
      case 2:
        diff_holder.min = elem.getClicked();
        break;
      case 3:
        diff_holder.mult = elem.getClicked();
        break;
      case 4:
        diff_holder.div = elem.getClicked();
        break;
      }
    }
  };
};

InFunc create_nav_func(int num) {
  return new InFunc() {
    public void run(ScreenElem elem) {
      click_sound.play();
      cur_screen = num;
      Screen new_screen = createMainScreen();
      switch(num) {
      case 0:
        diff_holder = new DifficultyHolder();

        new_screen = createMainScreen();
        break;
      case 1:
        new_screen = createLeaderBoardScreen();
        break;
      case 2:
        new_screen = createGameScreen();
        break;
      case 3:
        new_screen = createScoreScreen();
        break;
      }
      screens[num] = new_screen;
    }
  };
};

InFunc save_score_func = new InFunc() {
  public void run(ScreenElem elem) {
    click_sound.play();
    Table table = loadTable("scores.csv", "header");

    TableRow new_row = table.addRow();
    new_row.setString("username", username);
    new_row.setFloat("time", old_time/1000);

    saveTable(table, "scores.csv");
  }
};

class GameScreen extends Screen {
  GameElem[] game_elems;
  GameScreen() {
    super();
    game_elems = new GameElem[0];
  }
  private void clearGameElem(int id1, int id2) {
    this.game_elems[id1].setClicked(false);
    this.game_elems[id1].setOn(false);
    this.game_elems[id2].setClicked(false);
    this.game_elems[id2].setOn(false);
    old_num1 = 999;
    old_id1 = 999;
  }


  private void remGameElem(int id) {
    for (int i = id; i< this.game_elems.length-1; i++) {
      this.game_elems[i] = this.game_elems[i+1];
      this.game_elems[i].id = i;
    }
    this.game_elems = (GameElem[])shorten(this.game_elems);
  }
  public void showScreen() {
    background(background_color);
    for (int i = 0; i < this.screen_elems.length; i++) {
      this.screen_elems[i].display();
    }
    for (int i = 0; i < this.game_elems.length; i++) {
      this.game_elems[i].display();
    }
  }
  public void registerHover(float i_x, float i_y) {
    for (int i = 0; i < this.screen_elems.length; i++) {
      this.screen_elems[i].registerHover(i_x, i_y);
    }
    for (int i = 0; i < this.game_elems.length; i++) {
      this.game_elems[i].registerHover(i_x, i_y);
    }
  }

  public void registerClick(float i_x, float i_y) {
    for (int i = 0; i < this.screen_elems.length; i++) {
      this.screen_elems[i].registerClick(i_x, i_y);
    }
    for (int i = 0; i < this.game_elems.length; i++) {
      GameElem temp_game_elem = this.game_elems[i];
      temp_game_elem.registerClick(i_x, i_y);

      if (temp_game_elem.getClicked()) {
        int elem_val = temp_game_elem.getVal();
        int elem_id = temp_game_elem.id;
        boolean elem_is_equation = temp_game_elem.getIsEquation();

        if (elem_id == old_id1) {
        } else {
          if (old_num1 == 999) {
            old_num1 = elem_val;
            old_id1 = elem_id;
            old_is_equation = elem_is_equation;
            box_sound.play();
          } else if (old_is_equation == elem_is_equation) {
            err_sound.play();
            this.clearGameElem(old_id1, elem_id);
          } else {
            if (old_num1 == elem_val) {
              this.remGameElem(old_id1);
              if (elem_id > old_id1) {
                this.remGameElem(elem_id-1);
              } else {
                this.remGameElem(elem_id);
              }
              if (this.game_elems.length == 0) {
                cur_screen = 3;
                old_time = millis()-old_time;
                screens[3] = createScoreScreen();
              }

              old_num1 = 999;
              old_id1 = 999;
              succes_sound.play();
            } else {
              err_sound.play();
              this.clearGameElem(old_id1, elem_id);
            }
          }
        }
      }
    }
  }
  public void addGameElem(GameElem game_elem) {
    this.game_elems = (GameElem[])append(this.game_elems, game_elem);
  }
}

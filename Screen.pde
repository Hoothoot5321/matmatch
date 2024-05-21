class Screen {

  public ScreenElem[] screen_elems;
  public color background_color;

  Screen() {
    screen_elems = new ScreenElem[0];
    this.background_color = current_colors.bg_col;
  }




  public void addElem(ScreenElem screen_elem) {
    this.screen_elems = (ScreenElem[])append(this.screen_elems, screen_elem);
  }

  public void showScreen() {
    background(background_color);
    for (int i = 0; i < this.screen_elems.length; i++) {
      this.screen_elems[i].display();
    }
  }
  public void update() {
    for (int i = 0; i < this.screen_elems.length; i++) {
      this.screen_elems[i].update();
    }
    this.background_color = current_colors.bg_col;
  }

  public void registerClick(float i_x, float i_y) {
    for (int i = 0; i < this.screen_elems.length; i++) {
      this.screen_elems[i].registerClick(i_x, i_y);
    }
  }
  public void registerHover(float i_x, float i_y) {
    for (int i = 0; i < this.screen_elems.length; i++) {
      this.screen_elems[i].registerHover(i_x, i_y);
    }
  }
  public void registerKey(char i_key) {
    for (int i = 0; i < this.screen_elems.length; i++) {
      this.screen_elems[i].registerKey(i_key);
    }
  }
}

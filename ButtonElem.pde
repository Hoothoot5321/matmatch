class ButtonElem extends ScreenElem {
  float b_width;
  float b_height;

  boolean hover = false;

  ButtonElem(float i_x, float i_y, float i_b_width, float i_b_height, InFunc i_hover_func, InFunc i_click_func, InFunc  i_key_func, String i_text) {
    super(i_x, i_y, i_hover_func, i_click_func, i_key_func, i_text);
    this.b_width = i_b_width;
    this.b_height = i_b_height;
  }


  public void display() {
    this.tempDisplay(button_font_size);
  }
  
  public void tempDisplay(float font_size) {
      if (this.hover || this.getClicked()) {

      stroke(current_colors.accent_col);
    } else {
      stroke(current_colors.text_col);
    }
    if (this.getClicked()) {
      fill(current_colors.accent_col);
    } else {
      fill(current_colors.text_col);
    }

    rect(this.getX(), this.getY(), b_width, b_height);
    textAlign(CENTER);
    textSize(font_size);
    if (this.getClicked()) {
      fill(current_colors.text_col);
    } else {
      fill(current_colors.bg_col);
    }

    text(this.getText(), this.getX(), this.getY()+button_font_size/4);
  }

  public boolean checkHit(float i_x, float i_y) {
    boolean hit_x = false;
    boolean hit_y = false;
    if (i_x > this.getX()-this.b_width/2-border_width/2 && i_x < this.getX() +this.b_width/2+border_width/2) {
      hit_x = true;
    }
    if (i_y > this.getY()-this.b_height/2-border_width/2 && i_y < this.getY() +this.b_height/2+border_width/2) {
      hit_y = true;
    }
    if (hit_x && hit_y) {
      return true;
    }
    return false;
  }
  public void registerClick(float i_x, float i_y) {

    if (this.checkHit(i_x, i_y)) {
      this.activateClick();
      this.setClicked(true);
      return;
    }
    this.setClicked(false);
  }

  public void registerHover(float i_x, float i_y) {
    if (this.checkHit(i_x, i_y)) {
      this.hover = true;
      return;
    }
    hover = false;
  }
}

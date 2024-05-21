class ToggleElem extends ButtonElem {

  private boolean on;
  ToggleElem(float i_x, float i_y, float i_b_width, float i_b_height, InFunc i_hover_func, InFunc i_click_func, String i_text) {
    super(i_x, i_y, i_b_width, i_b_height, i_hover_func, i_click_func, no_func, i_text);

    this.on = true;
    this.setClicked(true);
  }



  public void setOn(boolean i_on) {
    this.on = i_on;
  }
  public void registerClick(float i_x, float i_y) {


    if (this.checkHit(i_x, i_y)) {

      if (!on) {
        this.setClicked(true);
        on = true;
      } else {
        if (diff_holder.oneTrue()) {
          return;
        }
        this.setClicked(false);
        on = false;
      }

      this.activateClick();
      return;
    }
  }
}

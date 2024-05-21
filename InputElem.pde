class InputElem extends ButtonElem {

  InputElem(float i_x, float i_y, float i_b_width, float i_b_height, InFunc i_hover_func, InFunc i_click_func, InFunc i_key_func) {
    super(i_x, i_y, i_b_width, i_b_height, i_hover_func, i_click_func, i_key_func, "");
  }

  public void registerKey(char i_key) {
    if (!this.getClicked()) {
      return;
    }
    String old_text = this.getText();
    if (key == BACKSPACE && old_text.length() > 0) {
      String temp_str = old_text.substring(0, old_text.length()-1);
      this.setText(temp_str);
      this.activateKey();
      return;
    }
    int key_code = int(i_key);
    if (!((key_code >=48 && key_code <=57) || (key_code >=65 && key_code <= 90) || (key_code >= 97 && key_code <= 122) || key_code == 32)) {
      return;
    }
    String new_text = old_text + i_key;
    this.setText(new_text);
    this.activateKey();
  }
}

class TextElem extends ScreenElem {

  private float font_size;
  private color text_color;
  private boolean accent_text;
  private InFunc update_func;

  TextElem(float i_x, float i_y, String i_text, float i_font_size, boolean i_accent_text,InFunc i_update_func) {
    super(i_x, i_y,no_func,no_func,no_func,i_text);
    this.font_size = i_font_size;
    this.accent_text = i_accent_text;
    if (i_accent_text) {
      this.text_color = current_colors.accent_col;
    } else {
      this.text_color = current_colors.text_col;
    }
    this.update_func = i_update_func;
  }

  public void display() {
    textAlign(CENTER);
    textSize(this.font_size);
    fill(this.text_color);
    text(this.getText(), this.getX(), this.getY());
  }

  public void update() {
    this.update_func.run(this);
    if (this.accent_text) {
      this.text_color = current_colors.accent_col;
    } else {
      this.text_color = current_colors.text_col;
    }
  }
}

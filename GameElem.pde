class GameElem extends ToggleElem {

  private boolean is_equation;
  private int eq_type;
  private int num1;
  private int num2;
  public int id;

  GameElem(float i_x, float i_y, float i_b_width, float i_b_height, InFunc i_hover_func, InFunc i_click_func, String i_text, boolean i_is_equation, int i_eq_type, int i_num1, int i_num2, int id) {
    super(i_x, i_y, i_b_width, i_b_height, i_hover_func, i_click_func, i_text);

    this.is_equation = i_is_equation;
    this.eq_type = i_eq_type;
    this.num1 = i_num1;
    this.num2 = i_num2;
    this.id = id;
    
    this.setOn(false);
    this.setClicked(false);
  }
  
  public boolean getIsEquation() {
    return this.is_equation;
  }

  private int calcEq() {
    switch(this.eq_type) {
    case 1:
      return this.num1+this.num2;

    case 2:
      return this.num1-this.num2;

    case 3:
      return this.num1*this.num2;

    case 4:
      return this.num1/this.num2;
    default:
      return 0;
    }
  }

  public void display() {
    this.tempDisplay(button_font_size*2/3);
  }

  public int getVal() {
    if (this.is_equation) {
      return this.calcEq();
    } else {
      return this.num1;
    }
  }
}

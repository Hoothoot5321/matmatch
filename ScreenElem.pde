class ScreenElem {

  private float x;
  private float y;
  private String text;

  private InFunc hover_func;
  private InFunc click_func;
  private InFunc key_func;

  private boolean clicked;

  ScreenElem(float i_x, float i_y, InFunc i_hover_func, InFunc i_click_func, InFunc i_key_func, String i_text) {
    this.x = i_x;
    this.y = i_y;
    this.hover_func = i_hover_func;
    this.click_func = i_click_func;
    this.text = i_text;
    this.key_func = i_key_func;
    this.clicked = false;
  }
  

  public boolean getClicked() {
    return this.clicked;
  }
  public void setClicked(boolean i_clicked) {
    this.clicked = i_clicked;
  }
  public void display() {
  }
  public String getText() {
    return this.text;
  }
  public void setText(String i_text) {
    this.text = i_text;
  }

  public float getX() {
    return this.x;
  }

  public float getY() {
    return this.y;
  }
  public void activateHover() {
    this.hover_func.run(this);
  }
  public void activateClick() {
    this.click_func.run(this);
  }
  public void activateKey() {
    this.key_func.run(this);
  }

  public void registerHover(float x, float y) {
  }
  public void registerClick(float x, float y) {
  }
  public void registerUp(float x, float y) {
  }
  public void registerKey(char i_key) {
  }

  public void update() {
  }
}

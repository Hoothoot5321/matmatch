public class ProgramColors {
  color bg_col;
  color accent_col;
  color text_col;

  ProgramColors(color bg_col, color accent_col, color text_col) {
    this.bg_col = bg_col;
    this.accent_col = accent_col;
    this.text_col = text_col;
  }
}

ProgramColors defineLightColors() {
  color light_bg_col = color(244, 238, 255);
  color light_text_col = color(66, 72, 116);
  //color light_accent_col = color(49, 34, 116);
  color light_accent_col = color(188, 176, 239);

  ProgramColors light_program_colors = new ProgramColors(light_bg_col, light_accent_col, light_text_col);

  return light_program_colors;
}

ProgramColors defineDarkColors() {
  color dark_bg_col = color(32, 15, 65);
  color dark_text_col = color(179, 185, 226);
  //color dark_accent_col = color(188, 176, 239);
  color dark_accent_col = color(49, 34, 116);

  ProgramColors dark_program_colors = new ProgramColors(dark_bg_col, dark_accent_col, dark_text_col);

  return dark_program_colors;
}

class DifficultyHolder {
  public boolean plus;
  public boolean min;
  public boolean mult;
  public boolean div;
  DifficultyHolder() {
    this.plus = true;
    this.min = true;
    this.mult = true;
    this.div = true;
  }

  public void show() {
    println(this.plus);
    println(this.min);
    println(this.mult);
    println(this.div);
    println("");
  }

  public boolean oneTrue() {
    if (this.createArr().length == 1) {
      return true;
    }
    return false;
  }

  private int[] createArr() {

    int[] diff_arr = new int[0];
    if (this.plus) {
      diff_arr = append(diff_arr, 1);
    }

    if (this.min) {
      diff_arr = append(diff_arr, 2);
    }

    if (this.mult) {
      diff_arr = append(diff_arr, 3);
    }

    if (this.div) {
      diff_arr = append(diff_arr, 4);
    }
    return diff_arr;
  }

  public int getDiff() {
    int[] diff_arr = this.createArr();
    int rand_val = round(random(0, diff_arr.length-1));

    return diff_arr[rand_val];
  }
}

class MathHolder {
  public String[] heads;
  public int[] nums;

  MathHolder(String[] i_heads, int[] i_nums) {
    this.heads = i_heads;
    this.nums = i_nums;
  }
}

class User {
  public String username;
  public float time;

  User(String i_username, float i_time) {
    this.username = i_username;
    this.time = i_time;
  }
}


int genVal(int min, int maks) {
  return int(random(min, maks));
}


MathHolder makeMath(int eq_type) {
  int num1 = 3;
  int num2 = 2;

  int val = 5;

  String equation = "3+2";
  switch(eq_type) {
  case 1:
    num1 = genVal(min_val, max_val);
    num2 = genVal(min_val, max_val);

    val = num1+num2;

    equation = "("+str(num1)+")"+"+"+"("+str(num2)+")";
    break;
  case 2:
    num1 = genVal(min_val, max_val);
    num2 = genVal(min_val, max_val);

    val = num1-num2;

    equation = "("+str(num1)+")"+"-"+"("+str(num2)+")";
    break;
  case 3:
    num1 = genVal(min_val/2, max_val/2);
    num2 = genVal(min_val/2, max_val/2);

    val = num1*num2;

    equation = "("+str(num1)+")"+"*"+"("+str(num2)+")";
    break;
  case 4:
    do {
      num2 = genVal(min_val/2, max_val/2);
      val = genVal(min_val/2, max_val/2);

      num1 = val*num2;

      equation = "("+str(num1)+")"+"/"+"("+str(num2)+")";
    } while (num2 == 0);

    break;
  }


  String[] temp = new String[2];
  int[] nums =  {num1, num2, val};



  temp[0] = equation;
  temp[1] = str(val);

  MathHolder out_hoolder = new MathHolder(temp, nums);

  return out_hoolder;
}

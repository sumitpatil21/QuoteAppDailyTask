import 'dart:io';

bool Checkfunction(List checkout, int x) {
  bool check = false;
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      if (checkout[i][j] == checkout[i][j]) {
        return check = true;
        x++;
      } else if (checkout[0][0] == checkout[1][1] &&
          checkout[1][1] == checkout[2][2]) {
        return true;
        x * 2;
      } else if (checkout[0][2] == checkout[1][1] &&
          checkout[1][1] == checkout[2][0]) {
        return true;
        x += 10;
      } else if (checkout[i][0] == checkout[i][1] &&
          checkout[i][1] == checkout[i][2]) {
        return true;
        x += 90;
      } else if (checkout[0][j] == checkout[1][j] &&
          checkout[1][j] == checkout[2][j]) {
        return true;
        x += 3;
      }
    }
  }
  return true;
}

void main() {
  String play = "Enter O Line And Pos:";
  var o_var = "O";
  var x_var = "X";
  int pos, l = 0, x = 0;
  List gamescreen = [
    ["1", "2", "3"],
    ["4", '5', "6"],
    ["7", "8", "9"]
  ];

  do {
    if (x % 2 == 0) {
      play = "Enter X Line And Pos:";
    } else {
      play = "Enter O Line And Pos:";
    }
    stdout.write("Enter Line ${play}");
    l = int.parse(stdin.readLineSync()!);
    x++;
    stdout.write("Enter Position ");
    pos = int.parse(stdin.readLineSync()!);

    if (x % 2 == 0) {
      gamescreen[l][pos] = "O";
      play = "Enter X Line And Pos:";
    } else {
      gamescreen[l][pos] = "X";
      play = "Enter O Line And Pos:";
    }
    print(gamescreen[l][pos]);
  } while (x <= 9);

  if (Checkfunction(gamescreen, x = 0)) {
    
    print("You Win!!!!!!!!!!!!!!");
  }
  print(gamescreen);
}

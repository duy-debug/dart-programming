import 'dart:io';
import 'dart:math';
void main(){
  double a = 0, b = 0, c = 0;
  do{
  stdout.writeln("Giải phương trình bậc 2: ax² + bx + c = 0");
  stdout.write("Nhap hệ số a (a ≠ 0): ");
  a = double.tryParse(stdin.readLineSync()!) ?? 0;
  }while (a == 0);
  stdout.write("Nhập hệ số b: ");
  b = double.tryParse(stdin.readLineSync()!) ?? 0;
  stdout.write("Nhập hệ số c: ");
  c = double.tryParse(stdin.readLineSync()!) ?? 0;
  // Tính delta
  double delta = b * b - 4 * a * c;
  // Hiển thị phương trình
  print("Phương trình bậc 2: ${a}x^2 + ${b}x + ${c} = 0");
  if(delta < 0){
    print("Phuong trình vô nghiệm");
  } else if (delta == 0){
    double x = -b / (2 * a);
    print("Phương trình có nghiệm kép: x1 = x2 = $x");
  }
  else{
    double x1 = (-b + sqrt(delta)) / (2 * a);
    double x2 = (-b - sqrt(delta)) / (2 * a);
    print("Phương trình có 2 nghiệm phân biệt:");
    print("x1 = $x1");
    print("x2 = $x2");
  }
}
void main(){
  // Các phép tính cơ bản
  int a = 10;
  int b = 10 - 4;
  int c = 3 * 4;
  double d = 10 / 4; // Kết quả là kiểu double
  int e = 10 ~/ 4; // Kết quả là kiểu int (phép chia lấy phần nguyên)
  int f = 10 % 4; // Phép chia lấy phần dư
  print("$a, $b, $c, $d, $e, $f");
  int x = 0;
  x+= 5; // Tương đương x = x + 5
  print("x = $x");
  print("x = $x");
  x-=2; // Tương đương x = x - 2
  print("x = $x");
  x~/=3; // Tương đương x = x / 3
  
  // Tăng giảm giá trị ++ --
  int y = 5;
  y++; // Tăng y lên 1 đơn vị sau khi thực hiện tính toán
  print("y = $y");
  --y; // Giảm y xuống 1 đơn vị trước khi thực hiện tính toán
  print("y = $y");

  int z = 10;
  print(z++); // In ra giá trị z trước khi tăng
  print(++z); // Tăng z trước rồi in ra giá trị z

  print(2==2); // Kiểm tra bằng nhau
  print(2!=3); // Kiểm tra không bằng nhau
  print(3>2); // Kiểm tra lớn hơn
  print(2<3); // Kiểm tra nhỏ hơn
  print(3>=3); // Kiểm tra lớn hơn hoặc bằng
  print(3<=2); // Kiểm tra nhỏ hơn hoặc bằng

  Object obj1 = 'Duy';
  // Kiểm tra kiểu dữ liệu
  if(obj1 is String){
    print("obj1 là String"); // Tức là obj1 có kiểu dữ liệu String
  } else {
    print("obj1 không phải String"); // tức là obj1 không có kiểu dữ liệu String
  }
  if (obj1 is! int){
    print("obj1 không phải int"); // Tức là obj1 không có kiểu dữ liệu int
  } else {
    print("obj1 là int"); // Tức là obj1 có kiểu dữ liệu int
  }

  // Ép kiểu dữ liệu
  String str = obj1 as String; // Ép kiểu obj1 từ Object sang String
  print(str.toUpperCase()); // In ra chuỗi in hoa


  var k = 2;
  print(k);
  // ??= nghĩa là nó sẽ gán giá trị chỉ khi biến k bằng null
  int? l;
  l ??= 5; // Vì l đang là null nên sẽ gán giá trị 5 cho l
  print(" l = $l");
/*
  l ??= 10; // Vì l không còn là null nên sẽ không gán giá trị 10 cho l
  print(" l = $l");
  */

}
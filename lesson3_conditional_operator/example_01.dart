/*
  a ? b : c;
  Nếu a đúng thì biểu thức trả về b, ngược lại trả về c
  a ?? b;
  Nếu a khác null thì biểu thức trả về a, ngược lại trả về b
*/
void main(){
  int age = 20;
  String name = "Duy";
  // Sử dụng toán tử điều kiện để in ra lời chào nếu tuổi lớn hơn hoặc bằng 18
  String greeting = (age >= 18) ? "Hello $name" : "Bạn chưa đủ tuổi";
  print(greeting);

  // Sử dụng toán tử ?? để gán giá trị mặc định nếu biến có giá trị null
  String? nickName;
  String displayName = nickName ?? "Người dùng không có biệt danh";
  print(displayName);

  var kiemTra = (100%2==0) ? "100 là số chẵn" : "100 là số lẻ";
  print(kiemTra);

  var x = 100;
  var y = x ?? 50; // Vì x khác null nên y sẽ nhận giá trị của x
  print("y = $y");

  int? z;
  var w = z ?? 30; // Vì z là null nên w sẽ nhận giá trị 30
  print("w = $w");
}
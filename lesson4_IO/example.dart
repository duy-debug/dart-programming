import 'dart:io';
void main(){
  /*
  Các thao tác cơ bản với Input/Output trong Dart
  - Sử dụng thư viện dart:io
  - Sử dụng hàm stdout.write() để in ra màn hình mà không xuống dòng
  - Sử dụng hàm stdin.readLineSync() để đọc dữ liệu từ bàn phím
  */
  // Nhập tên người dùng
  stdout.write("Nhập tên của bạn: ");
  String nameInput = stdin.readLineSync()!; // ! nghĩa là chắc chắn không null tức là người dùng sẽ nhập dữ liệu
  // Nhập tuổi người dùng
  stdout.write("Nhập tuổi của bạn: ");  
  int ageInput = int.parse(stdin.readLineSync()!); // Chuyển đổi chuỗi nhập từ bàn phím sang kiểu int
  print("Xin chào $nameInput, bạn năm nay $ageInput tuổi.");
}
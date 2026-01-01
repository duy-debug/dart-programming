void main(){
  // int: Kiểu dữ liệu số nguyên
  int soNguyen = 10;
  print("Số nguyên: $soNguyen");
  // double: Kiểu dữ liệu số thực
  double soThuc = 10.5;
  print("Số thực: $soThuc");

  // num: Kiểu dữ liệu số chung (có thể là int hoặc double)
  num so1 = 5; // có thể là int
  num so2 = 7.8; // có thể là double
  print("Số num 1: $so1, Số num 2: $so2");
  // String: Kiểu dữ liệu chuỗi
  String chuoi = "Xin chào Dart!";
  print("Chuỗi: $chuoi");
  // bool: Kiểu dữ liệu boolean (true hoặc false)
  bool isDartFun = true;
  print("Dart có vui không? $isDartFun");

  // Chuyển chuỗi sang số nguyên
  String chuoiSo = "123";
  int soChuyenDoi = int.parse(chuoiSo);
  print("Chuỗi '$chuoiSo' chuyển sang số nguyên: $soChuyenDoi");
  // Chuyển chuỗi sang số thực
  String chuoiSoThuc = "45.67";
  double soThucChuyenDoi = double.parse(chuoiSoThuc);
  print("Chuỗi '$chuoiSoThuc' chuyển sang số thực: $soThucChuyenDoi");

  // Chuyển số nguyên sang chuỗi
  int soNguyen2 = 456;
  String chuoiChuyenDoi = soNguyen2.toString();
  print("Số nguyên $soNguyen2 chuyển sang chuỗi: '$chuoiChuyenDoi'");
  // Chuyển số thực sang chuỗi
  double soThuc2 = 78.9;
  String chuoiThucChuyenDoi = soThuc2.toString();
  print("Số thực $soThuc2 chuyển sang chuỗi: '$chuoiThucChuyenDoi'");
  String piAsString = 3.14159.toStringAsFixed(2);
  print("Số pi với 2 chữ số thập phân: $piAsString");


  /*
  Chuỗi là một tập hợp ký tự UTF-16 được đặt trong dấu nháy đơn ('') hoặc nháy kép ("")
  - Có thể sử dụng chuỗi đa dòng bằng cách sử dụng dấu nháy kép hoặc nháy đơn ba lần (''' hoặc """)
  - Các phép toán cơ bản với chuỗi:
    +: Nối chuỗi
    *: Lặp chuỗi  
  - Một số phương thức thường dùng với chuỗi:
    .toUpperCase(): Chuyển chuỗi thành chữ in hoa
    .toLowerCase(): Chuyển chuỗi thành chữ in thường
    .length: Độ dài của chuỗi
    .substring(start, end): Lấy một phần của chuỗi từ vị trí start đến end-1
    .replaceAll(old, new): Thay thế tất cả các ký tự old bằng new trong chuỗi
  */

  var s1 = 'Duy';
  var s2 = "Ngọc Duy";

  // Chèn giá trị của một biểu thức, biến vào trong chuỗi: s{.....}
  double diemToan = 8.5;
  double diemLy = 7.5;
  double diemHoa = 9.0;
  var ketQua = "Điểm trung bình của $s2 là ${(diemToan + diemLy + diemHoa) / 3}";
  print(ketQua);

  // Tạo ra chuỗi nằm ở nhiều dòng
  var s4 = '''
    Dòng 1
    Dòng 2
    Dòng 3
  ''';
  var s5 = """
    Dòng A
    Dòng B
    Dòng C
  """;
  var s6 = 'Đây là dòng 1\nĐây là dòng 2\nĐây là dòng 3'; // Sử dụng ký tự đặc biệt \n để xuống dòng
  print(s6);

  var s7 = r'Đây là dòng 1\nĐây là dòng 2\nĐây là dòng 3'; // Chuỗi raw, không xử lý ký tự đặc biệt
  print(s7);

  var s8 = 'Hello ' + 'Dart'; // Nối chuỗi
  print(s8);
  var s9 = 'Chuỗi ' "này " "là " "nối " "bằng " "cách " "không " "dùng " "+"; // Nối chuỗi không dùng +
  print(s9);

  // bool : true hoặc false
  bool x1 = true;
  if(x1){
    print("x1 đúng");
  } else {
    print("x1 sai");
  } 
}
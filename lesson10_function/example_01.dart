/*
Dart là một ngôn ngữ thuần hướng, vì vậy ngay cả các hàm cũng là đối tượng trong Dart và có kiểu function.
Ta cũng có thể gọi một thể hiện (instance) của một lớp Dart như thế nào nó là một hàm.\

Hàm là một khối lệnh thực hiện một tác vụ gì đó, khối lệnh này được dùng nhiều lần trong chương trình nên ta định nghĩa nó thành một hàm riêng biệt.
*/

// VIẾT ĐẦY ĐỦ HÀM
double tinhTong(var a, double b){
  return a + b;
}

// SỬ DỤNG CÚ PHÁP RÚT GỌN "=>"
double tinhTong1(var a, double b) => a + b;
// => expression là cách viết gọn của {return expression;}
/*
Lưu ý: Chỉ có biểu thức (expression) mới có thể sử dụng cú pháp rút gọn "=>", không áp dụng cho các khối lệnh (statement).
Ví dụ: Ta không thể để if statement trong hàm sử dụng cú pháp "=>". Tuy nhiên ta có thể sử dụng toán tử 3 ngôi (ternary operator) để thay thế if statement trong trường hợp này.
conditionalFunction(var a) => a > 0 ? "Positive" : "Non-positive";
*/

// HÀM VỚI THAM SỐ THEO TÊN
// Khi gọi hàm(function), ta có thể truyền tham số theo tên.
String creatFullName({String lastName="", String firstName=""}){
  return lastName + " " + firstName;
} 

// THAM SỐ TÙY CHỌN 
/*
Các tham số tùy chọn trong hàm cho phép ta gọi hàm mà không cần cung cấp giá trị cho tất cả các tham số.
Khi không được cung cấp giá trị, chúng sẽ nhân giá trị mặc định (nếu có) hoặc giá trị null. Ví dụ:
Để khai báo các tham số tùy chọn, ta sử dụng dấu ngoặc vuông [] hoặc dấu ngoặc nhọn {}.
*/
double sum(double a, [double? b, double? c]){
  var result = a;
  result += (b!=null) ? b : 0;
  result += (c!=null) ? c : 0;
  return result;
}




// Hàm main(): Khởi đầu ứng dụng
void main(){
  print("Hello Dart Function!");
  var x = tinhTong(5, 100);
  print("Tổng là: $x");

  var y = tinhTong1(10, 200);
  print("Tổng là: $y");

  var fullName = creatFullName(lastName: "Ngô", firstName: "Lực"); // Phải truyền đúng tên tham số 
  print("Họ và tên: $fullName");

  var fullName1 = creatFullName(firstName: "Lực", lastName: "Ngô"); // Có thể thay đổi thứ tự tham số khi gọi hàm
  print("Họ và tên: $fullName1");

  print(sum(10));          // Chỉ truyền 1 tham số
  print(sum(10, 20));     // Truyền 2 tham số
  print(sum(10, 20, 30)); // Truyền đủ 3 tham số

// HÀM ẨN DANH
/*
Trong Dart, ta có thể tạo các hàm không có tên gọi là hàm ẩn danh (anonymous functions) hoặc hàm lambda (lambda functions) hoặc Closures.
*/
var ham = (var x, var y){
  return x + y;
  };
  var kq = ham(5, 10);
  print("Kết quả hàm ẩn danh: $kq");
}
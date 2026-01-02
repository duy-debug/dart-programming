void main(){
  // ĐỊNH NGHĨA RECORD
  // - Record là một kiểu dữ liệu mới trong Dart, được giới thiệu để nhóm nhiều giá trị lại với nhau thành một đơn vị duy nhất.
  // - Record cho phép lưu trữ các giá trị có kiểu dữ liệu khác nhau trong cùng một cấu trúc.
  // - Record hỗ trợ cả các trường có tên và không có tên, giúp tăng tính linh hoạt khi làm việc với dữ liệu phức tạp.
  // - Record là immutable, nghĩa là sau khi tạo, các giá trị bên trong không thể thay đổi.
  // - Record giúp cải thiện tính rõ ràng và dễ đọc của mã nguồn khi làm việc với nhiều giá trị liên quan.
  var r = ('first', a:2, 5, 10.5); // record

  // Định nghĩa record có 2 giá trị
  var point = (123, 456);

  // Định nghĩa person
  var person = (name: 'An', age: 30, 35);

  // Truy cập các giá trị trong record
  // Dùng chỉ số
  print(point.$1); // 123
  print(point.$2); // 456

  // Dùng tên
  print(person.name); // An
  print(person.age); // 30
  print(person.$1); // 35
}
# Lập Trình Dart
Tài liệu học tập và thực hành lập trình Dart từ cơ bản đến nâng cao.
---
## Mục lục
- [Giới thiệu](#giới-thiệu)
- [Cài đặt môi trường](#cài-đặt-môi-trường)
- [Các chủ đề chính](#các-chủ-đề-chính)
  - [Dart Cơ Bản](#dart-cơ-bản)
  - [Dart Nâng Cao](#dart-nâng-cao)
  - [Lập Trình Hướng Đối Tượng với Dart](#lập-trình-hướng-đối-tượng-với-dart)
  - [Bài Thực Hành](#bài-thực-hành)
---
## Giới thiệu
Dart là ngôn ngữ lập trình hiện đại, mạnh mẽ và linh hoạt, được phát triển bởi Google. Dart được sử dụng rộng rãi để xây dựng ứng dụng di động (Flutter), web và server.
**Đặc điểm nổi bật:**
- Cú pháp đơn giản, dễ học
- Hỗ trợ lập trình hướng đối tượng mạnh mẽ
- Null Safety giúp code an toàn hơn
- Hot Reload giúp phát triển nhanh chóng
- Cross-platform: Mobile, Web, Desktop, Server
---
## Cài đặt môi trường
### Bước 1: Tải Dart SDK
1. Truy cập trang chính thức: [https://dart.dev/get-dart/archive](https://dart.dev/get-dart/archive)
2. Chọn tab **Windows**
3. Tải xuống file `dartsdk-windows-x64-release.zip`
### Bước 2: Cài đặt Dart SDK
1. Giải nén file vừa tải về
2. Di chuyển thư mục `dart-sdk` đến vị trí cố định
   - *Ví dụ:* `C:\dart\`
   - Đường dẫn `bin`: `C:\dart\dart-sdk\bin`
### Bước 3: Cấu hình biến môi trường (PATH)
1. **Mở System Properties**: `Windows + R` → Nhập `sysdm.cpl` → Enter
2. **Environment Variables**: Tab **Advanced** → **Environment Variables...**
3. **Thêm vào PATH**: Tìm biến `Path` → **Edit** → **New** → Dán `C:\dart\dart-sdk\bin` → **OK**
> **Lưu ý:** Khởi động lại terminal sau khi cấu hình.
### Bước 4: Kiểm tra cài đặt
```cmd
dart --version
```
Kết quả mong đợi:
```
Dart SDK version: 3.x.x ...
```
### Bước 5: Cài đặt Extension cho VS Code
1. Mở **Visual Studio Code**
2. Extensions (`Ctrl + Shift + X`)
3. Tìm kiếm: `Dart`
4. Cài đặt: **Dart** (by Dart Code)
---
## Các chủ đề chính
### Dart Cơ Bản
Các khái niệm nền tảng và cú pháp cơ bản của Dart.
#### [Lesson 1: Khai báo biến](./lesson1_variable_declaration)
- Các cách khai báo biến: `var`, `final`, `const`
- Kiểu dữ liệu cơ bản: `String`, `int`, `double`, `bool`
- Nullable types với `?`
- Late initialization với `late`
#### [Lesson 2: Toán tử (Operators)](./lesson2_operator)
- Toán tử số học: `+`, `-`, `*`, `/`, `~/`, `%`
- Toán tử so sánh: `==`, `!=`, `>`, `<`, `>=`, `<=`
- Toán tử kiểm tra kiểu: `is`, `is!`, `as`
- Toán tử gán: `+=`, `-=`, `*=`, `/=`, `??=`
- Tăng/giảm: `++`, `--`
#### [Lesson 3: Toán tử điều kiện](./lesson3_conditional_operator)
- Câu lệnh `if`, `else`, `else if`
- Toán tử ba ngôi: `condition ? expr1 : expr2`
- Toán tử null-aware: `??`, `?.`, `??=`
#### [Lesson 4: Nhập xuất dữ liệu (I/O)](./lesson4_IO)
- Đọc input từ người dùng với `stdin`
- Xuất dữ liệu với `print()`
- Xử lý chuỗi và định dạng output
#### [Lesson 5: Kiểu dữ liệu](./lesson5_data_type)
- Kiểu dữ liệu số: `int`, `double`, `num`
- Kiểu dữ liệu chuỗi: `String`
- Kiểu dữ liệu boolean: `bool`
- Object và dynamic
---
### Dart Nâng Cao
Các cấu trúc dữ liệu và khái niệm nâng cao trong Dart.
#### [Lesson 6: Cấu trúc dữ liệu](./lesson6_datastrure)
- **List**: Danh sách có thứ tự
- **Set**: Tập hợp không trùng lặp
- **Map**: Cặp key-value
#### [Lesson 7: Runes](./lesson7_runes)
- Làm việc với Unicode characters
- Xử lý emoji và ký tự đặc biệt
#### [Lesson 8: Records](./lesson8_record)
- Kiểu dữ liệu Record (Dart 3.0+)
- Pattern matching với records
- Destructuring
#### [Lesson 9: Typedef](./lesson9_typedef)
- Định nghĩa type alias
- Sử dụng typedef cho function types
- Tăng tính đọc hiểu của code
#### [Lesson 10: Functions](./lesson10_function)
- Khai báo và sử dụng hàm
- Tham số: required, optional, named
- Arrow functions
- Anonymous functions và closures
- Higher-order functions
---
### Lập Trình Hướng Đối Tượng với Dart
Các khái niệm OOP và kỹ thuật lập trình nâng cao.
#### [Lesson 11: OOP - Cơ bản](./lesson11_oop)
- Classes và Objects
- Constructors (named, factory)
- Properties và Methods
- Getters và Setters
- Static members
- Operator overloading
#### [Lesson 12: Future - Lập trình bất đồng bộ](./lesson12_future)
- Khái niệm async/await
- Future và FutureBuilder
- Xử lý async operations
- Error handling với try-catch
#### [Lesson 13: Stream - Dòng dữ liệu](./lesson13_stream)
- Khái niệm Stream
- Single-subscription vs Broadcast streams
- StreamController
- async* và yield
#### [Lesson 14: Mixin - Tái sử dụng code](./lesson14_mixin)
- Khái niệm Mixin
- Sử dụng `with` keyword
- Multiple inheritance với mixin
- Best practices
---
### Bài Thực Hành
#### [Practice: If-Else](./practice_if_else)
- Bài tập về câu lệnh điều kiện
- Giải phương trình bậc 2
#### [Practice: Loop](./practice_loop)
- Vòng lặp `for`, `while`, `do-while`
- Các bài tập tổng hợp
#### [Lab - Bài tập tổng hợp](./Lab)
- Task 1: Hello World
- Task 2: Bài tập tổng hợp
- Task 3: Project nhỏ
- Task 4-6: Các bài nâng cao
---
### Tài liệu chính thức
1. [Dart Official Documentation](https://dart.dev/guides)
2. [Dart Language Tour](https://dart.dev/guides/language/language-tour)
3. [Effective Dart](https://dart.dev/guides/language/effective-dart)
4. [Dart API Reference](https://api.dart.dev/)
### Tài liệu trực tuyến
1. [DartPad - Online Editor](https://dartpad.dev/)
2. [Dart Tutorials - Tutorialspoint](https://www.tutorialspoint.com/dart_programming/index.htm)
3. [Dart Programming - Javatpoint](https://www.javatpoint.com/dart-programming)
4. [freeCodeCamp - Dart Tutorial](https://www.youtube.com/watch?v=Ej_Pcr4uC2Q)
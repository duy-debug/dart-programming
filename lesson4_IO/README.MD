# Lesson 4: Nhập Xuất Dữ Liệu (Input/Output)

## Giới thiệu
Input/Output (I/O) là quá trình giao tiếp giữa chương trình và người dùng. Trong Dart, thư viện `dart:io` cung cấp các công cụ để đọc dữ liệu từ bàn phím và xuất dữ liệu ra màn hình console.

## Thư viện dart:io

### Import thư viện
```dart
import 'dart:io';
```

Lưu ý: Thư viện `dart:io` không hỗ trợ trên web. Chỉ sử dụng cho console applications, server-side Dart, và Flutter apps (không phải Flutter web).

## 1. Xuất dữ liệu (Output)

### Phương thức print()
Hàm phổ biến nhất để in ra console, tự động xuống dòng sau khi in.

```dart
print("Hello, Dart!");
print("Dòng thứ hai");
```

Output:
```
Hello, Dart!
Dòng thứ hai
```

### Phương thức stdout.write()
In ra màn hình mà không xuống dòng.

```dart
stdout.write("Nhập tên: ");
stdout.write("ABC");
stdout.write(" XYZ");
```

Output:
```
Nhập tên: ABC XYZ
```

### Phương thức stdout.writeln()
Tương tự `print()`, in và xuống dòng.

```dart
stdout.writeln("Dòng 1");
stdout.writeln("Dòng 2");
```

### So sánh print() vs stdout.write()

```dart
// Sử dụng print()
print("Tên: ");
print("Duy");

// Output:
// Tên:
// Duy

// Sử dụng stdout.write()
stdout.write("Tên: ");
stdout.write("Duy");

// Output:
// Tên: Duy
```

## 2. Nhập dữ liệu (Input)

### Phương thức stdin.readLineSync()
Đọc một dòng input từ bàn phím.

```dart
import 'dart:io';

void main() {
  stdout.write("Nhập tên của bạn: ");
  String? name = stdin.readLineSync();
  print("Xin chào, $name!");
}
```

### Xử lý Null Safety
`readLineSync()` trả về `String?` (có thể null). Có hai cách xử lý:

#### Cách 1: Sử dụng ! (null assertion)
```dart
String name = stdin.readLineSync()!;
```
Cảnh báo: Nếu input thực sự là null, chương trình sẽ crash.

#### Cách 2: Sử dụng ?? (null-coalescing)
```dart
String name = stdin.readLineSync() ?? "";
```
An toàn hơn, cung cấp giá trị mặc định.

#### Cách 3: Kiểm tra null
```dart
String? input = stdin.readLineSync();
if (input != null) {
  print("Bạn nhập: $input");
} else {
  print("Không có input");
}
```

## 3. Chuyển đổi kiểu dữ liệu

### Chuyển String sang int
```dart
stdout.write("Nhập tuổi: ");
String? input = stdin.readLineSync();
int age = int.parse(input!);
print("Tuổi của bạn: $age");
```

### Chuyển String sang double
```dart
stdout.write("Nhập chiều cao (m): ");
double height = double.parse(stdin.readLineSync()!);
print("Chiều cao: $height m");
```

### Xử lý lỗi khi parse

#### Sử dụng try-catch
```dart
stdout.write("Nhập một số: ");
try {
  int number = int.parse(stdin.readLineSync()!);
  print("Số bạn nhập: $number");
} catch (e) {
  print("Lỗi: Vui lòng nhập một số hợp lệ!");
}
```

#### Sử dụng tryParse()
```dart
stdout.write("Nhập tuổi: ");
int? age = int.tryParse(stdin.readLineSync() ?? "");
if (age != null) {
  print("Tuổi: $age");
} else {
  print("Tuổi không hợp lệ!");
}
```

## 4. Ví dụ thực tế

### Ví dụ 1: Chương trình chào hỏi
```dart
import 'dart:io';

void main() {
  stdout.write("Nhập tên của bạn: ");
  String name = stdin.readLineSync()!;
  
  stdout.write("Nhập tuổi của bạn: ");
  int age = int.parse(stdin.readLineSync()!);
  
  print("Xin chào $name, bạn năm nay $age tuổi.");
}
```

### Ví dụ 2: Tính toán đơn giản
```dart
import 'dart:io';

void main() {
  stdout.write("Nhập số thứ nhất: ");
  double num1 = double.parse(stdin.readLineSync()!);
  
  stdout.write("Nhập số thứ hai: ");
  double num2 = double.parse(stdin.readLineSync()!);
  
  print("Tổng: ${num1 + num2}");
  print("Hiệu: ${num1 - num2}");
  print("Tích: ${num1 * num2}");
  print("Thương: ${num1 / num2}");
}
```

### Ví dụ 3: Input validation
```dart
import 'dart:io';

void main() {
  int? age;
  
  while (age == null) {
    stdout.write("Nhập tuổi (1-120): ");
    age = int.tryParse(stdin.readLineSync() ?? "");
    
    if (age == null || age < 1 || age > 120) {
      print("Tuổi không hợp lệ! Vui lòng nhập lại.");
      age = null;
    }
  }
  
  print("Tuổi hợp lệ: $age");
}
```

## 5. String Interpolation trong Output

### Cơ bản
```dart
String name = "Duy";
int age = 21;
print("Tên: $name, Tuổi: $age");
```

### Với biểu thức
```dart
int a = 10;
int b = 20;
print("Tổng của $a và $b là ${a + b}");
```

### Gọi methods
```dart
String text = "dart";
print("Chữ hoa: ${text.toUpperCase()}");
```

## 6. Formatting Output

### In số với độ chính xác
```dart
double pi = 3.14159265359;
print(pi.toStringAsFixed(2));  // 3.14
print(pi.toStringAsFixed(4));  // 3.1416
```

### Padding và alignment
```dart
String name = "Duy";
print(name.padLeft(10));      // "       Duy"
print(name.padRight(10, '.'));// "Duy......."
```

### In số với định dạng
```dart
int number = 1234567;
print(number.toString().padLeft(10, '0')); // 0001234567
```

## 7. Đọc nhiều giá trị trên một dòng

```dart
import 'dart:io';

void main() {
  stdout.write("Nhập 3 số cách nhau bởi khoảng trắng: ");
  List<String> inputs = stdin.readLineSync()!.split(' ');
  
  int a = int.parse(inputs[0]);
  int b = int.parse(inputs[1]);
  int c = int.parse(inputs[2]);
  
  print("Tổng: ${a + b + c}");
}
```

## Best Practices

1. Luôn import `dart:io` khi cần I/O
2. Sử dụng `stdout.write()` khi không muốn xuống dòng
3. Xử lý null safety với `!`, `??`, hoặc null check
4. Sử dụng `tryParse()` thay vì `parse()` để tránh exception
5. Validate input từ người dùng
6. Sử dụng string interpolation thay vì nối chuỗi
7. Sử dụng try-catch cho input quan trọng

## Lỗi thường gặp

### 1. Quên import dart:io
```dart
// Lỗi!
void main() {
  String input = stdin.readLineSync()!; // stdin not defined
}
```

Sửa:
```dart
import 'dart:io';

void main() {
  String input = stdin.readLineSync()!;
}
```

### 2. Không xử lý null
```dart
// Lỗi khi compile với null safety
String input = stdin.readLineSync(); // Error!
```

Sửa:
```dart
String input = stdin.readLineSync()!; // hoặc
String input = stdin.readLineSync() ?? "";
```

### 3. Parse lỗi
```dart
// Crash khi nhập text thay vì số
int age = int.parse(stdin.readLineSync()!);
```

Sửa:
```dart
int? age = int.tryParse(stdin.readLineSync() ?? "");
if (age == null) {
  print("Input không hợp lệ!");
}
```

## Tài liệu tham khảo

1. Dart Official - dart:io library: https://api.dart.dev/stable/dart-io/dart-io-library.html
2. Dart stdin class: https://api.dart.dev/stable/dart-io/stdin.html
3. Dart stdout class: https://api.dart.dev/stable/dart-io/stdout.html
4. W3Schools Dart User Input: https://www.w3schools.io/languages/dart-user-input/
5. Tutorialspoint - Dart I/O: https://www.tutorialspoint.com/dart_programming/dart_programming_console.htm

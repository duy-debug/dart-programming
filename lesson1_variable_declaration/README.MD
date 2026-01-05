# Lesson 1: Khai Báo Biến Trong Dart

## Giới thiệu
Biến (variable) là một vùng nhớ được đặt tên để lưu trữ dữ liệu trong chương trình. Trong Dart, có nhiều cách để khai báo biến tùy thuộc vào mục đích sử dụng.

## Các cách khai báo biến

### 1. Khai báo với kiểu dữ liệu cụ thể
Cách này yêu cầu chỉ định rõ kiểu dữ liệu cho biến.

```dart
String name = "Duy";
int age = 21;
double height = 1.75;
bool isStudent = true;
```

Ưu điểm: Code rõ ràng, dễ đọc, IDE hỗ trợ tốt hơn.

### 2. Khai báo với từ khóa var
Dart tự động suy luận kiểu dữ liệu dựa trên giá trị khởi tạo.

```dart
var fullName = "Trần Mai Ngọc Duy"; // Dart tự hiểu là String
var height = 1.75; // Dart tự hiểu là double
var age = 21; // Dart tự hiểu là int
```

Lưu ý: Sau khi khai báo, kiểu dữ liệu không thể thay đổi.

```dart
var x = 10; // x là int
x = "text"; // Lỗi! Không thể gán String cho int
```

### 3. Khai báo với Object
Biến kiểu Object có thể chứa bất kỳ kiểu dữ liệu nào.

```dart
Object tenNguoiDung = "Nguyễn Văn A"; // Có thể là String
tenNguoiDung = 123; // Có thể thay đổi thành int
tenNguoiDung = true; // Có thể thay đổi thành bool
```

### 4. Khai báo với dynamic
Tương tự Object nhưng không kiểm tra kiểu dữ liệu tại compile time.

```dart
dynamic value = "Hello";
value = 123; // OK
value = true; // OK
```

## Null Safety

### Nullable Types (Kiểu có thể null)
Mặc định, tất cả biến trong Dart không thể chứa giá trị null. Để cho phép null, sử dụng dấu `?`.

```dart
String name = "Duy"; // Không thể null
String? nickname; // Có thể null
nickname = null; // OK
nickname = "DN"; // OK
```

### Non-nullable Types (Kiểu không thể null)
Biến không có dấu `?` phải được khởi tạo giá trị trước khi sử dụng.

```dart
int age; // Lỗi! Phải khởi tạo giá trị
int age = 20; // OK
```

## Biến final

Biến final chỉ có thể gán giá trị một lần duy nhất. Sau đó không thể thay đổi.

```dart
final name = "Duy";
// name = "Ngoc"; // Lỗi! Không thể gán lại

final int age; // Có thể khai báo mà chưa gán
age = 21; // Gán giá trị sau
// age = 22; // Lỗi! Đã gán rồi
```

Sự khác biệt với const: final được xác định tại runtime, const được xác định tại compile time.

## Biến const

Biến const là hằng số compile-time. Giá trị phải được biết trước khi chương trình chạy.

```dart
const pi = 3.14159;
const int maxValue = 100;
```

Điểm khác biệt quan trọng:

```dart
final DateTime now = DateTime.now(); // OK, giá trị xác định khi chạy
const DateTime now2 = DateTime.now(); // Lỗi! const cần giá trị lúc compile
```

Quy tắc:
- Phải gán giá trị ngay khi khai báo
- Giá trị phải là hằng số compile-time
- Không thể thay đổi

## Late Initialization

Từ khóa `late` cho phép khai báo biến non-nullable mà không cần khởi tạo ngay.

```dart
late String description;
// Sử dụng sau này
description = "Đây là mô tả";
print(description); // OK
```

Ứng dụng:
- Khai báo biến toàn cục sẽ được khởi tạo sau
- Lazy initialization (khởi tạo khi cần thiết)
- Top-level và instance variables

```dart
late String moTa2; // Biến toàn cục

void main() {
  moTa2 = "Trần Mai Ngọc Duy";
  print(moTa2);
}
```

Lưu ý: Nếu truy cập biến late trước khi gán giá trị sẽ gây lỗi runtime.

## So sánh var, final, const

| Đặc điểm | var | final | const |
|----------|-----|-------|-------|
| Thay đổi giá trị | Có | Không | Không |
| Thời điểm xác định | Runtime | Runtime | Compile-time |
| Phải khởi tạo ngay | Không | Không | Có |
| Sử dụng | Biến thay đổi | Biến không đổi | Hằng số |

## Best Practices

1. Ưu tiên sử dụng final khi biến không cần thay đổi
2. Sử dụng const cho các hằng số thực sự
3. Sử dụng var khi kiểu dữ liệu rõ ràng từ giá trị khởi tạo
4. Khai báo kiểu cụ thể khi muốn code rõ ràng hơn
5. Sử dụng nullable types (`?`) một cách cẩn thận
6. Tránh dùng dynamic trừ khi thực sự cần thiết

## Tài liệu tham khảo

1. Dart Official - Variables: https://dart.dev/language/variables
2. Dart Language Tour - Variables: https://dart.dev/guides/language/language-tour#variables
3. Effective Dart - Usage: https://dart.dev/guides/language/effective-dart/usage
4. Dart Null Safety: https://dart.dev/null-safety
5. W3Schools Dart Variables: https://www.w3schools.io/languages/dart-variables/

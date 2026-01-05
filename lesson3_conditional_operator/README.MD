# Lesson 3: Toán Tử Điều Kiện

## Giới thiệu
Toán tử điều kiện (conditional operators) cho phép viết các biểu thức điều kiện ngắn gọn thay vì sử dụng câu lệnh if-else dài dòng. Dart cung cấp hai toán tử điều kiện chính: toán tử ba ngôi và toán tử null-coalescing.

## 1. Toán tử ba ngôi (Ternary Operator)

### Cú pháp
```dart
điều_kiện ? giá_trị_nếu_đúng : giá_trị_nếu_sai
```

Nếu điều kiện đúng (true), biểu thức trả về giá trị đầu tiên. Nếu sai (false), trả về giá trị thứ hai.

### Ví dụ cơ bản
```dart
int age = 20;
String status = (age >= 18) ? "Người lớn" : "Trẻ em";
print(status); // "Người lớn"
```

Tương đương với:
```dart
String status;
if (age >= 18) {
  status = "Người lớn";
} else {
  status = "Trẻ em";
}
```

### Ví dụ nâng cao
```dart
int score = 85;
String grade = (score >= 90) ? "A" :
               (score >= 80) ? "B" :
               (score >= 70) ? "C" :
               (score >= 60) ? "D" : "F";
print(grade); // "B"
```

### Sử dụng trong print
```dart
int number = 100;
print((number % 2 == 0) ? "$number là số chẵn" : "$number là số lẻ");
// "100 là số chẵn"
```

### Best practices
- Sử dụng cho các điều kiện đơn giản
- Không lồng quá nhiều tầng (khó đọc)
- Với logic phức tạp, nên dùng if-else thông thường

## 2. Toán tử Null-Coalescing (??)

### Cú pháp
```dart
biểu_thức_1 ?? biểu_thức_2
```

Nếu biểu thức 1 khác null, trả về biểu thức 1. Nếu biểu thức 1 là null, trả về biểu thức 2.

### Ví dụ cơ bản
```dart
String? nickname;
String displayName = nickname ?? "Guest";
print(displayName); // "Guest"
```

### Với giá trị khác null
```dart
int? userAge = 25;
int age = userAge ?? 0;
print(age); // 25
```

### Chuỗi nhiều toán tử ??
```dart
String? firstName;
String? middleName;
String? lastName = "Nguyen";

String name = firstName ?? middleName ?? lastName ?? "Unknown";
print(name); // "Nguyen"
```

Dart sẽ kiểm tra từ trái sang phải và trả về giá trị đầu tiên khác null.

### Kết hợp với ternary operator
```dart
int? score;
String result = (score ?? 0) >= 50 ? "Pass" : "Fail";
print(result); // "Fail"
```

## 3. Toán tử Null-aware Assignment (??=)

### Cú pháp
```dart
biến ??= giá_trị
```

Chỉ gán giá trị cho biến khi biến đang là null.

### Ví dụ
```dart
int? count;
count ??= 10; // count là null nên gán 10
print(count); // 10

count ??= 20; // count không null nên không gán
print(count); // 10 (không đổi)
```

### Ứng dụng thực tế
```dart
String? username;
username ??= "default_user";  // Gán giá trị mặc định nếu null

List<int>? numbers;
numbers ??= [];  // Khởi tạo list rỗng nếu null
numbers.add(1);
```

## 4. Toán tử Conditional Member Access (?.)

### Cú pháp
```dart
đối_tượng?.thuộc_tính
đối_tượng?.phương_thức()
```

Chỉ truy cập thuộc tính hoặc gọi phương thức khi đối tượng khác null.

### Ví dụ
```dart
String? text;
print(text?.length); // null (không gây lỗi)

text = "Hello Dart";
print(text?.length); // 10
```

### Tránh null pointer exception
```dart
String? message;
// print(message.length); // Lỗi! Cannot call on null

print(message?.length); // null - An toàn
print(message?.toUpperCase()); // null - An toàn
```

### Chuỗi gọi
```dart
String? name;
int? length = name?.trim()?.toUpperCase()?.length;
print(length); // null (an toàn)

name = "  Dart  ";
length = name?.trim()?.toUpperCase()?.length;
print(length); // 4
```

## 5. Kết hợp các toán tử

### Ví dụ 1: ?? và ?.
```dart
String? username;
int nameLength = username?.length ?? 0;
print(nameLength); // 0
```

### Ví dụ 2: ?., ??, và ternary
```dart
String? input;
String output = (input?.isEmpty ?? true) ? "No input" : input!;
print(output); // "No input"
```

### Ví dụ 3: Xử lý giá trị mặc định
```dart
int? userAge;
String message = "You are ${userAge ?? 18} years old";
print(message); // "You are 18 years old"
```

## So sánh if-else vs Conditional Operators

### Sử dụng if-else
```dart
String status;
if (age >= 18) {
  status = "Adult";
} else {
  status = "Minor";
}
```

### Sử dụng ternary operator
```dart
String status = age >= 18 ? "Adult" : "Minor";
```

Ưu điểm ternary operator:
- Ngắn gọn hơn
- Dễ đọc với điều kiện đơn giản
- Có thể sử dụng trong biểu thức

Khi nào dùng if-else:
- Logic phức tạp
- Nhiều điều kiện lồng nhau
- Có nhiều câu lệnh trong mỗi nhánh

## Best Practices

1. Sử dụng toán tử điều kiện cho các trường hợp đơn giản
2. Ưu tiên `??` thay vì kiểm tra null thủ công
3. Sử dụng `?.` để tránh null pointer exceptions
4. Không lồng quá nhiều toán tử ba ngôi
5. Kết hợp `??` với getter để cung cấp giá trị mặc định
6. Sử dụng `??=` để lazy initialization

## Các trường hợp thường gặp

### 1. Giá trị mặc định
```dart
String? config;
String setting = config ?? "default";
```

### 2. Kiểm tra điều kiện ngắn gọn
```dart
bool isValid = input != null && input.isNotEmpty;
String result = isValid ? "Valid" : "Invalid";
```

### 3. Xử lý optional parameters
```dart
void greet(String? name) {
  print("Hello ${name ?? 'Guest'}!");
}
```

### 4. Chuỗi xử lý null-safe
```dart
String? data = fetchData();
String result = data?.trim()?.toUpperCase() ?? "NO DATA";
```

## Tài liệu tham khảo

1. Dart Official - Operators: https://dart.dev/language/operators#conditional-expressions
2. Dart Language Tour - Conditional Expressions: https://dart.dev/guides/language/language-tour#conditional-expressions
3. Dart Null Safety: https://dart.dev/null-safety/understanding-null-safety
4. W3Schools Dart Conditional Operators: https://www.w3schools.io/languages/dart-operators/
5. Javatpoint - Dart Control Flow: https://www.javatpoint.com/dart-if-else-statements

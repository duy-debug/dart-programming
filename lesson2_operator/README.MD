# Lesson 2: Toán Tử Trong Dart

## Giới thiệu
Toán tử (operators) là các ký hiệu đặc biệt được sử dụng để thực hiện các phép toán trên biến và giá trị. Dart cung cấp nhiều loại toán tử khác nhau để xử lý dữ liệu.

## 1. Toán tử số học (Arithmetic Operators)

### Các phép toán cơ bản

```dart
int a = 10;
int b = 3;

int tong = a + b;        // 13 - Cộng
int hieu = a - b;        // 7  - Trừ
int tich = a * b;        // 30 - Nhân
double thuong = a / b;   // 3.333... - Chia (kết quả double)
int chiaLayNguyen = a ~/ b; // 3 - Chia lấy phần nguyên
int chiaDu = a % b;      // 1  - Chia lấy phần dư
```

Lưu ý quan trọng:
- Phép `/` luôn trả về kiểu double
- Phép `~/` trả về kiểu int (chia lấy phần nguyên)
- Phép `%` trả về phần dư của phép chia

## 2. Toán tử gán (Assignment Operators)

### Gán đơn giản
```dart
int x = 10; // Gán giá trị 10 cho x
```

### Gán kết hợp
```dart
int x = 5;
x += 3;  // Tương đương: x = x + 3  → x = 8
x -= 2;  // Tương đương: x = x - 2  → x = 6
x *= 4;  // Tương đương: x = x * 4  → x = 24
x ~/= 5; // Tương đương: x = x ~/ 5 → x = 4
x %= 3;  // Tương đương: x = x % 3  → x = 1
```

### Toán tử gán null-aware (?=)
Chỉ gán giá trị khi biến đang là null.

```dart
int? a;
a ??= 5;  // a là null nên gán 5 → a = 5
a ??= 10; // a không null nên không gán → a vẫn là 5
```

## 3. Toán tử tăng giảm (Increment/Decrement)

### Tăng giảm sau (Postfix)
```dart
int x = 5;
int y = x++;  // y = 5 (lấy giá trị x trước), sau đó x = 6
print("x = $x, y = $y"); // x = 6, y = 5
```

### Tăng giảm trước (Prefix)
```dart
int x = 5;
int y = ++x;  // x = 6 trước, sau đó y = 6
print("x = $x, y = $y"); // x = 6, y = 6
```

Quy tắc:
- `x++` hoặc `x--`: Sử dụng giá trị hiện tại, sau đó tăng/giảm
- `++x` hoặc `--x`: Tăng/giảm trước, sau đó sử dụng giá trị mới

## 4. Toán tử so sánh (Relational Operators)

```dart
int a = 10;
int b = 20;

print(a == b);  // false - Bằng nhau
print(a != b);  // true  - Khác nhau
print(a > b);   // false - Lớn hơn
print(a < b);   // true  - Nhỏ hơn
print(a >= b);  // false - Lớn hơn hoặc bằng
print(a <= b);  // true  - Nhỏ hơn hoặc bằng
```

Kết quả: luôn trả về kiểu bool (true hoặc false)

## 5. Toán tử kiểm tra kiểu (Type Test Operators)

### Toán tử is
Kiểm tra xem đối tượng có thuộc kiểu dữ liệu nào đó không.

```dart
Object obj = "Hello";

if (obj is String) {
  print("obj là String"); // In ra dòng này
}

if (obj is! int) {
  print("obj không phải int"); // In ra dòng này
}
```

### Toán tử as (Type Cast)
Ép kiểu một đối tượng sang kiểu khác.

```dart
Object obj = "Dart Programming";
String str = obj as String;
print(str.toUpperCase()); // DART PROGRAMMING
```

Lưu ý: Nếu ép kiểu sai sẽ gây lỗi runtime.

## 6. Toán tử logic (Logical Operators)

```dart
bool a = true;
bool b = false;

print(a && b);  // false - AND (và)
print(a || b);  // true  - OR (hoặc)
print(!a);      // false - NOT (phủ định)
```

Bảng chân trị:
- `&&` (AND): Chỉ true khi cả hai đều true
- `||` (OR): True khi ít nhất một trong hai true
- `!` (NOT): Đảo ngược giá trị boolean

## 7. Toán tử null-aware

### Toán tử ?? (Null-coalescing)
Trả về giá trị bên trái nếu khác null, ngược lại trả về giá trị bên phải.

```dart
String? name;
String displayName = name ?? "Guest"; // "Guest"

int? value = 10;
int result = value ?? 0; // 10
```

### Toán tử ?. (Null-aware access)
Chỉ gọi method/property khi đối tượng khác null.

```dart
String? text;
print(text?.length); // null (không lỗi)

text = "Hello";
print(text?.length); // 5
```

### Toán tử ??= (Null-aware assignment)
Đã được giải thích ở phần toán tử gán.

## 8. Toán tử bitwise (Bitwise Operators)

Thao tác trên từng bit của số nguyên.

```dart
int a = 5;  // 0101 (binary)
int b = 3;  // 0011 (binary)

print(a & b);  // 1  (0001) - AND
print(a | b);  // 7  (0111) - OR
print(a ^ b);  // 6  (0110) - XOR
print(~a);     // -6        - NOT
print(a << 1); // 10 (1010) - Dịch trái
print(a >> 1); // 2  (0010) - Dịch phải
```

## 9. Toán tử điều kiện (Conditional Operators)

Chi tiết sẽ được học ở Lesson 3.

```dart
int age = 20;
String status = age >= 18 ? "Adult" : "Minor";
```

## Thứ tự ưu tiên toán tử (Operator Precedence)

Từ cao đến thấp:
1. Postfix: `x++`, `x--`
2. Prefix: `++x`, `--x`, `!x`, `~x`
3. Nhân/Chia: `*`, `/`, `~/`, `%`
4. Cộng/Trừ: `+`, `-`
5. Dịch bit: `<<`, `>>`
6. Bitwise AND: `&`
7. Bitwise XOR: `^`
8. Bitwise OR: `|`
9. So sánh: `<`, `>`, `<=`, `>=`, `is`, `is!`, `as`
10. Bằng/Khác: `==`, `!=`
11. Logic AND: `&&`
12. Logic OR: `||`
13. Null-coalescing: `??`
14. Điều kiện: `? :`
15. Gán: `=`, `+=`, `-=`, etc.

Sử dụng dấu ngoặc `()` để thay đổi thứ tự ưu tiên.

## Best Practices

1. Sử dụng dấu ngoặc để làm rõ thứ tự khi có nhiều toán tử
2. Ưu tiên `??` thay vì kiểm tra null thủ công
3. Sử dụng `?.` để tránh null pointer exceptions
4. Cẩn thận với integer division (`/` vs `~/`)
5. Sử dụng `is` thay vì `as` khi có thể để tránh lỗi runtime

## Tài liệu tham khảo

1. Dart Official - Operators: https://dart.dev/language/operators
2. Dart Language Tour - Operators: https://dart.dev/guides/language/language-tour#operators
3. W3Schools Dart Operators: https://www.w3schools.io/languages/dart-operators/
4. Tutorialspoint - Dart Operators: https://www.tutorialspoint.com/dart_programming/dart_programming_operators.htm
5. Javatpoint - Dart Operators: https://www.javatpoint.com/dart-operators

# Lesson 5: Kiểu Dữ Liệu Trong Dart

## Giới thiệu
Kiểu dữ liệu (data types) xác định loại giá trị mà một biến có thể chứa và các thao tác có thể thực hiện trên giá trị đó. Dart là ngôn ngữ strongly-typed, nghĩa là mỗi biến đều có kiểu dữ liệu cụ thể.

## Hệ thống kiểu trong Dart

Trong Dart, mọi thứ đều là đối tượng (object), và mọi đối tượng đều là instance của một class. Tất cả các kiểu dữ liệu đều kế thừa từ class `Object`.

## 1. Kiểu số (Numbers)

### int - Số nguyên
Biểu diễn các số nguyên, không có phần thập phân.

```dart
int age = 21;
int population = 8000000000;
int negativeNumber = -42;
```

Giới hạn:
- 64-bit trên native platforms
- Arbitrary precision trên web (JavaScript)

### double - Số thực
Biểu diễn các số có phần thập phân.

```dart
double height = 1.75;
double pi = 3.14159;
double temperature = -5.5;
```

Đặc điểm:
- 64-bit floating-point (IEEE 754)
- Có thể biểu diễn cả số nguyên: `double x = 5;` (OK)

### num - Kiểu số chung
Là supertype của cả int và double.

```dart
num a = 10;      // có thể là int
num b = 3.14;    // có thể là double
a = 2.5;         // có thể đổi thành double
```

Sử dụng khi:
- Không chắc chắn sẽ nhận int hay double
- Cần linh hoạt trong tính toán

### Chuyển đổi giữa int và double

```dart
int a = 10;
double b = a.toDouble();  // 10.0

double c = 3.7;
int d = c.toInt();        // 3 (cắt bỏ phần thập phân)
int e = c.round();        // 4 (làm tròn)
int f = c.ceil();         // 4 (làm tròn lên)
int g = c.floor();        // 3 (làm tròn xuống)
```

### Parse từ String

```dart
int age = int.parse("21");           // 21
double price = double.parse("19.99"); // 19.99

// Xử lý an toàn
int? value = int.tryParse("abc");    // null (không crash)
```

### Chuyển sang String

```dart
int number = 42;
String str1 = number.toString();              // "42"

double pi = 3.14159;
String str2 = pi.toString();                  // "3.14159"
String str3 = pi.toStringAsFixed(2);          // "3.14"
String str4 = pi.toStringAsPrecision(4);      // "3.142"
```

## 2. Kiểu chuỗi (String)

String là chuỗi các ký tự UTF-16.

### Khai báo String

```dart
String name = "Dart";
String message = 'Hello World';
String empty = "";
```

### String đa dòng

```dart
String multiline1 = '''
Dòng 1
Dòng 2
Dòng 3
''';

String multiline2 = """
Dòng A
Dòng B
Dòng C
""";
```

### Ký tự đặc biệt

```dart
String newline = "Dòng 1\nDòng 2";      // Xuống dòng
String tab = "Col1\tCol2";               // Tab
String quote = "He said \"Hello\"";      // Dấu nháy kép
String backslash = "C:\\Users\\Admin";   // Backslash
```

### Raw String
Không xử lý ký tự đặc biệt.

```dart
String raw = r"C:\Users\Admin\n\t";
print(raw);  // In đúng như vậy, không xuống dòng
```

### String Interpolation

```dart
String name = "Duy";
int age = 21;

// Biến đơn giản
print("Tên: $name");

// Biểu thức
print("Năm sinh: ${2026 - age}");
print("Chữ hoa: ${name.toUpperCase()}");
```

### Nối chuỗi

```dart
// Sử dụng +
String s1 = "Hello" + " " + "Dart";

// Đặt cạnh nhau
String s2 = "Hello " "Dart";

// Nhiều dòng
String s3 = "Dòng 1 "
            "Dòng 2 "
            "Dòng 3";
```

### Các phương thức String phổ biến

```dart
String text = "  Dart Programming  ";

// Chuyển đổi case
text.toUpperCase();          // "  DART PROGRAMMING  "
text.toLowerCase();          // "  dart programming  "

// Xử lý khoảng trắng
text.trim();                 // "Dart Programming"
text.trimLeft();             // "Dart Programming  "
text.trimRight();            // "  Dart Programming"

// Kiểm tra
text.isEmpty;                // false
text.isNotEmpty;             // true
text.length;                 // 21

// Tìm kiếm
text.contains("Dart");       // true
text.startsWith("  D");      // true
text.endsWith("  ");         // true
text.indexOf("Dart");        // 2

// Substring
text.substring(2, 6);        // "Dart"

// Thay thế
text.replaceAll("Dart", "Flutter");  // "  Flutter Programming  "

// Tách chuỗi
"a,b,c".split(",");          // ["a", "b", "c"]
```

## 3. Kiểu Boolean (bool)

Chỉ có hai giá trị: `true` hoặc `false`.

```dart
bool isActive = true;
bool isDeleted = false;
```

### Sử dụng trong điều kiện

```dart
bool isAdult = age >= 18;

if (isAdult) {
  print("Đủ tuổi");
} else {
  print("Chưa đủ tuổi");
}
```

### Toán tử boolean

```dart
bool a = true;
bool b = false;

bool and = a && b;    // false
bool or = a || b;     // true
bool not = !a;        // false
```

## 4. Kiểu Object và dynamic

### Object
Là base class của tất cả các class trong Dart.

```dart
Object obj1 = "String";
Object obj2 = 123;
Object obj3 = true;
```

Cần ép kiểu để sử dụng:
```dart
Object obj = "Hello";
// obj.toUpperCase();        // Lỗi!
String str = obj as String;  // Ép kiểu
print(str.toUpperCase());    // OK
```

### dynamic
Tắt type checking tại compile time.

```dart
dynamic value = "Hello";
value = 123;      // OK
value = true;     // OK
value.anything(); // Không lỗi compile (có thể lỗi runtime)
```

### So sánh Object vs dynamic

| Đặc điểm | Object | dynamic |
|----------|--------|---------|
| Type checking | Compile-time | Runtime |
| Gọi method | Cần cast | Trực tiếp |
| An toàn | Cao hơn | Thấp hơn |
| Hiệu năng | Tốt hơn | Kém hơn |

Best practice: Tránh dùng dynamic, ưu tiên Object hoặc kiểu cụ thể.

## 5. Literal values

### Number literals
```dart
int decimal = 42;
int hex = 0x2A;           // Hexadecimal
int binary = 0b101010;    // Binary

double d1 = 3.14;
double d2 = 1.5e3;        // 1500.0 (scientific notation)
```

### String literals
```dart
String s1 = 'single';
String s2 = "double";
String s3 = '''triple''';
String s4 = r'raw';
```

### Boolean literals
```dart
bool t = true;
bool f = false;
```

## 6. Type conversion (Chuyển đổi kiểu)

### String ↔ Number
```dart
// String to int
int a = int.parse("123");
int? b = int.tryParse("abc");  // null

// String to double
double c = double.parse("3.14");
double? d = double.tryParse("xyz");  // null

// Number to String
String e = 123.toString();
String f = 3.14159.toStringAsFixed(2);  // "3.14"
```

### int ↔ double
```dart
int i = 5;
double d = i.toDouble();  // 5.0

double x = 3.7;
int y = x.toInt();        // 3
int z = x.round();        // 4
```

## Best Practices

1. Sử dụng kiểu dữ liệu cụ thể thay vì dynamic
2. Ưu tiên int cho số nguyên, double cho số thực
3. Sử dụng num khi cần linh hoạt giữa int và double
4. Dùng string interpolation thay vì nối chuỗi với +
5. Sử dụng tryParse() thay vì parse() để tránh exception
6. Tránh sử dụng Object và dynamic trừ khi cần thiết
7. Sử dụng const cho string literals không thay đổi

## Tài liệu tham khảo

1. Dart Official - Built-in types: https://dart.dev/language/built-in-types
2. Dart Language Tour - Built-in types: https://dart.dev/guides/language/language-tour#built-in-types
3. Dart Numbers: https://dart.dev/guides/language/numbers
4. Dart Strings: https://api.dart.dev/stable/dart-core/String-class.html
5. W3Schools Dart Data Types: https://www.w3schools.io/languages/dart-data-types/
6. Javatpoint - Dart Data Types: https://www.javatpoint.com/dart-data-types

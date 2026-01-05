# Lesson 10: Functions - Hàm Trong Dart

## Giới thiệu
Trong Dart, functions (hàm) là các khối mã được đặt tên để thực hiện một tác vụ cụ thể. Dart là ngôn ngữ hướng đối tượng thuần túy, nên ngay cả hàm cũng là đối tượng có kiểu `Function`.

## 1. Định nghĩa hàm cơ bản

### Cú pháp đầy đủ

```dart
kiểu_trả_về tên_hàm(tham_số) {
  // Thân hàm
  return giá_trị;
}
```

### Ví dụ

```dart
// Hàm có kiểu trả về
double tinhTong(double a, double b) {
  return a + b;
}

// Hàm không có kiểu trả về (void)
void inChaoHoi(String ten) {
  print("Xin chào, $ten!");
}

// Hàm không có tham số
String layThoiGian() {
  return DateTime.now().toString();
}
```

## 2. Arrow Syntax (Cú pháp mũi tên)

Với hàm chỉ có một biểu thức, có thể dùng `=>`.

```dart
// Cách thông thường
double tinhTong(double a, double b) {
  return a + b;
}

// Arrow syntax
double tinhTong(double a, double b) => a + b;

// Các ví dụ khác
bool laSoChan(int n) => n % 2 == 0;
String chuyenHoaVietHoa(String text) => text.toUpperCase();
```

Lưu ý: `=> expression` chỉ dùng cho biểu thức (expression), không dùng cho câu lệnh (statement).

## 3. Tham số (Parameters)

### Tham số bắt buộc (Required Parameters)

```dart
void greet(String name, int age) {
  print("Hello $name, you are $age years old");
}

greet("Duy", 21); // Phải cung cấp đủ tham số
```

### Tham số tùy chọn vị trí (Optional Positional Parameters)

Sử dụng dấu `[]`.

```dart
double sum(double a, [double? b, double? c]) {
  var result = a;
  result += (b != null) ? b : 0;
  result += (c != null) ? c : 0;
  return result;
}

print(sum(10));          // 10
print(sum(10, 20));      // 30
print(sum(10, 20, 30));  // 60
```

### Tham số tùy chọn được đặt tên (Optional Named Parameters)

Sử dụng dấu `{}`.

```dart
void createUser({String? name, int? age, String? email}) {
  print("Name: $name, Age: $age, Email: $email");
}

createUser(name: "Duy", age: 21);
createUser(email: "duy@example.com", name: "Duy");
```

### Tham số có giá trị mặc định

```dart
void printInfo({String name = "Guest", int age = 0}) {
  print("$name is $age years old");
}

printInfo();                      // Guest is 0 years old
printInfo(name: "Duy");          // Duy is 0 years old
printInfo(name: "Duy", age: 21); // Duy is 21 years old
```

### Tham số bắt buộc với named parameters

Sử dụng `required`.

```dart
void register({required String username, required String password}) {
  print("Registering $username...");
}

register(username: "duy123", password: "abc"); // OK
// register(username: "duy123"); // Lỗi! Thiếu password
```

### Kết hợp các loại tham số

```dart
void complexFunction(
  int required1,              // Required positional
  [int? optional1],           // Optional positional
  {String? named1,            // Optional named
   required String named2}    // Required named
) {
  // ...
}
```

Quy tắc: Required positional → Optional positional → Named parameters

## 4. Functions là đối tượng First-Class

### Gán hàm cho biến

```dart
int add(int a, int b) => a + b;

var myFunction = add;
print(myFunction(5, 3)); // 8
```

### Truyền hàm làm tham số

```dart
void execute(int a, int b, Function operation) {
  print(operation(a, b));
}

int multiply(int x, int y) => x * y;

execute(4, 5, multiply); // 20
execute(4, 5, (a, b) => a + b); // 9
```

### Hàm trả về hàm

```dart
Function makeAdder(int addBy) {
  return (int i) => addBy + i;
}

var add2 = makeAdder(2);
var add4 = makeAdder(4);

print(add2(3)); // 5
print(add4(3)); // 7
```

## 5. Anonymous Functions (Hàm ẩn danh)

Hàm không có tên, thường dùng làm callback.

### Cú pháp

```dart
(tham_số) {
  // Thân hàm
}

// Hoặc với arrow syntax
(tham_số) => biểu_thức
```

### Ví dụ

```dart
var list = [1, 2, 3, 4, 5];

// Anonymous function
list.forEach((item) {
  print("Item: $item");
});

// Arrow syntax
list.forEach((item) => print("Item: $item"));

// Gán cho biến
var sum = (int a, int b) {
  return a + b;
};
print(sum(5, 10)); // 15
```

## 6. Closures

Closure là hàm có thể truy cập biến từ phạm vi bên ngoài.

```dart
Function makeCounter() {
  int count = 0;
  
  return () {
    count++;
    return count;
  };
}

var counter = makeCounter();
print(counter()); // 1
print(counter()); // 2
print(counter()); // 3
```

## 7. Higher-Order Functions

Hàm nhận hàm khác làm tham số hoặc trả về hàm.

```dart
// map
var numbers = [1, 2, 3, 4];
var squared = numbers.map((n) => n * n).toList();
// [1, 4, 9, 16]

// where (filter)
var evens = numbers.where((n) => n % 2 == 0).toList();
// [2, 4]

// reduce
var sum = numbers.reduce((a, b) => a + b);
// 10

// fold
var product = numbers.fold(1, (prev, element) => prev * element);
// 24
```

## 8. Lexical Scope

Dart sử dụng lexical scope (phạm vi từ vựng).

```dart
var topLevel = "Biến toàn cục";

void outer() {
  var outerVar = "Biến trong outer";
  
  void inner() {
    var innerVar = "Biến trong inner";
    print(topLevel);   // OK
    print(outerVar);   // OK
    print(innerVar);   // OK
  }
  
  inner();
  // print(innerVar); // Lỗi! Không thể truy cập
}
```

## 9. Return Values

```dart
// Hàm có return
int sum(int a, int b) {
  return a + b;
}

// Hàm void (không return giá trị)
void printMessage(String msg) {
  print(msg);
  // Ngầm định return null
}

// Return sớm
String checkAge(int age) {
  if (age < 0) return "Invalid";
  if (age < 18) return "Minor";
  return "Adult";
}
```

## 10. Typedef

Định nghĩa kiểu cho hàm.

```dart
typedef IntOperation = int Function(int, int);

int add(int a, int b) => a + b;
int subtract(int a, int b) => a - b;

void execute(int x, int y, IntOperation op) {
  print(op(x, y));
}

execute(10, 5, add);      // 15
execute(10, 5, subtract); // 5
```

## Best Practices

1. Sử dụng arrow syntax cho hàm đơn giản
2. Đặt tên hàm theo camelCase
3. Sử dụng named parameters cho hàm nhiều tham số
4. Cung cấp giá trị mặc định hợp lý
5. Tách các hàm phức tạp thành hàm nhỏ hơn
6. Sử dụng typedef cho function signatures phức tạp
7. Tránh side effects trong hàm pure

## Tài liệu tham khảo

1. Dart Official - Functions: https://dart.dev/language/functions
2. Dart Language Tour - Functions: https://dart.dev/guides/language/language-tour#functions
3. Effective Dart - Functions: https://dart.dev/guides/language/effective-dart/usage#functions
4. Dart Functions Tutorial: https://www.tutorialspoint.com/dart_programming/dart_programming_functions.htm
5. W3Schools Dart Functions: https://www.w3schools.io/languages/dart-functions/

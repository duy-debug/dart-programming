# Lesson 11: Lập Trình Hướng Đối Tượng (OOP) - Cơ Bản

## Giới thiệu
Dart là ngôn ngữ lập trình hướng đối tượng (Object-Oriented Programming - OOP) thuần túy. Mọi thứ trong Dart đều là đối tượng, và mọi đối tượng đều là instance của một class.

## 1. Classes và Objects

### Định nghĩa Class

```dart
class Person {
  String name;
  int age;
  
  Person(this.name, this.age);
  
  void introduce() {
    print("Hi, I'm $name, $age years old");
  }
}
```

### Tạo Object

```dart
// Tạo instance
var person1 = Person("Duy", 21);
Person person2 = Person("Nga", 20);

// Gọi method
person1.introduce(); // Hi, I'm Duy, 21 years old

// Truy cập properties
print(person1.name); // Duy
person1.age = 22;
```

## 2. Constructors (Hàm khởi tạo)

### Default Constructor

```dart
class Point {
  double x, y;
  
  // Constructor
  Point(this.x, this.y);
}

var p = Point(10, 20);
```

### Named Constructor

```dart
class Point {
  double x, y;
  
  Point(this.x, this.y);
  
  // Named constructor
  Point.origin() {
    x = 0;
    y = 0;
  }
  
  Point.fromList(List<double> coords) {
    x = coords[0];
    y = coords[1];
  }
}

var p1 = Point(5, 10);
var p2 = Point.origin();
var p3 = Point.fromList([3.0, 4.0]);
```

### Initializer List

```dart
class Rectangle {
  double left, top, width, height;
  
  Rectangle(this.left, this.top, this.width, this.height);
  
  // Với initializer list
  Rectangle.fromCenter(double centerX, double centerY, 
                       double width, double height)
      : left = centerX - width / 2,
        top = centerY - height / 2,
        width = width,
        height = height;
}
```

### Const Constructor

```dart
class ImmutablePoint {
  final double x, y;
  
  const ImmutablePoint(this.x, this.y);
}

const p1 = ImmutablePoint(3, 4);
const p2 = ImmutablePoint(3, 4);
print(identical(p1, p2)); // true - cùng instance
```

## 3. Properties (Thuộc tính)

### Instance Variables

```dart
class Circle {
  double radius = 1.0; // Giá trị mặc định
  String? color;       // Nullable
  late double area;    // Late initialization
}
```

### Final và Const Properties

```dart
class Configuration {
  final String apiKey;
  static const String version = "1.0.0";
  
  Configuration(this.apiKey);
}
```

## 4. Getters và Setters

```dart
class Rectangle {
  double left, top, width, height;
  
  Rectangle(this.left, this.top, this.width, this.height);
  
  // Getter
  double get right => left + width;
  double get bottom => top + height;
  double get area => width * height;
  
  // Setter
  set right(double value) {
    left = value - width;
  }
  
  set bottom(double value) {
    top = value - height;
  }
}

var rect = Rectangle(10, 10, 100, 50);
print(rect.area);    // 5000 - gọi getter
rect.right = 150;    // Gọi setter
print(rect.left);    // 50
```

### Private Properties với Getters/Setters

```dart
class BankAccount {
  double _balance = 0; // Private (bắt đầu với _)
  
  double get balance => _balance;
  
  set balance(double value) {
    if (value >= 0) {
      _balance = value;
    } else {
      throw Exception("Balance cannot be negative");
    }
  }
  
  void deposit(double amount) {
    _balance += amount;
  }
}
```

## 5. Methods (Phương thức)

### Instance Methods

```dart
class Calculator {
  int add(int a, int b) => a + b;
  int subtract(int a, int b) => a - b;
  int multiply(int a, int b) => a * b;
  double divide(int a, int b) => a / b;
}

var calc = Calculator();
print(calc.add(5, 3)); // 8
```

### Method Overloading (Không hỗ trợ trực tiếp)

Dart không hỗ trợ method overloading, nhưng có thể dùng optional parameters:

```dart
class Printer {
  void print(String text, {int copies = 1, bool color = false}) {
    for (int i = 0; i < copies; i++) {
      print("$text ${color ? '(Color)' : '(B&W)'}");
    }
  }
}

var printer = Printer();
printer.print("Document");
printer.print("Document", copies: 3);
printer.print("Document", copies: 2, color: true);
```

## 6. Static Members

### Static Variables

```dart
class Counter {
  static int count = 0;
  
  Counter() {
    count++;
  }
  
  static void reset() {
    count = 0;
  }
}

var c1 = Counter();
var c2 = Counter();
print(Counter.count); // 2
Counter.reset();
print(Counter.count); // 0
```

### Static Methods

```dart
class MathUtils {
  static const double PI = 3.14159;
  
  static double square(double x) => x * x;
  static double cube(double x) => x * x * x;
  static double circleArea(double radius) => PI * square(radius);
}

// Gọi mà không cần tạo instance
print(MathUtils.square(5));      // 25
print(MathUtils.circleArea(10)); // 314.159
```

## 7. Operator Overloading

```dart
class Vector {
  final double x, y;
  
  Vector(this.x, this.y);
  
  // Overload toán tử +
  Vector operator +(Vector other) {
    return Vector(x + other.x, y + other.y);
  }
  
  // Overload toán tử -
  Vector operator -(Vector other) {
    return Vector(x - other.x, y - other.y);
  }
  
  // Overload toán tử *
  Vector operator *(double scalar) {
    return Vector(x * scalar, y * scalar);
  }
  
  // Overload toán tử ==
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Vector && x == other.x && y == other.y;
  }
  
  @override
  int get hashCode => x.hashCode ^ y.hashCode;
}

var v1 = Vector(3, 4);
var v2 = Vector(1, 2);
var v3 = v1 + v2;      // Vector(4, 6)
var v4 = v1 * 2;       // Vector(6, 8)
print(v1 == v2);       // false
```

## 8. toString() Method

```dart
class Person {
  String name;
  int age;
  
  Person(this.name, this.age);
  
  @override
  String toString() {
    return 'Person(name: $name, age: $age)';
  }
}

var person = Person("Duy", 21);
print(person); // Person(name: Duy, age: 21)
```

## 9. Cascade Notation (..)

```dart
class Person {
  String? name;
  int? age;
  String? address;
  
  void introduce() {
    print("Hi, I'm $name");
  }
}

// Không dùng cascade
var person = Person();
person.name = "Duy";
person.age = 21;
person.address = "Hanoi";
person.introduce();

// Dùng cascade
var person2 = Person()
  ..name = "Duy"
  ..age = 21
  ..address = "Hanoi"
  ..introduce();
```

## 10. Abstract Classes

```dart
abstract class Shape {
  double getArea();    // Abstract method
  double getPerimeter();
  
  void describe() {    // Concrete method
    print("This is a shape");
  }
}

class Circle extends Shape {
  double radius;
  
  Circle(this.radius);
  
  @override
  double getArea() => 3.14 * radius * radius;
  
  @override
  double getPerimeter() => 2 * 3.14 * radius;
}

// abstract class không thể khởi tạo
// Shape shape = Shape(); // Lỗi!

Circle circle = Circle(5);
print(circle.getArea()); // 78.5
```

## Best Practices

1. Sử dụng PascalCase cho tên class
2. Sử dụng camelCase cho method và property names
3. Sử dụng `_` prefix cho private members
4. Ưu tiên final cho properties không thay đổi
5. Sử dụng named constructors cho các cách khởi tạo khác nhau
6. Override toString() để debug dễ dàng
7. Sử dụng getters/setters để kiểm soát truy cập
8. Tránh quá nhiều static members (code smell)

## Tài liệu tham khảo

1. Dart Official - Classes: https://dart.dev/language/classes
2. Dart Language Tour - Classes: https://dart.dev/guides/language/language-tour#classes
3. Effective Dart - Design: https://dart.dev/guides/language/effective-dart/design
4. Dart OOP Tutorial: https://www.tutorialspoint.com/dart_programming/dart_programming_classes.htm
5. W3Schools Dart OOP: https://www.w3schools.io/languages/dart-object-oriented-programming/

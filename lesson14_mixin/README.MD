# Lesson 14: Mixin - Tái Sử Dụng Mã Nguồn

## Giới thiệu
Mixin là một cách để định nghĩa các đoạn mã có thể được tái sử dụng trong nhiều lớp mà không cần sử dụng kế thừa đa cấp (multiple inheritance). Mixin cung cấp một cách linh hoạt để "trộn" các tính năng vào một class.

## 1. Khai báo và sử dụng Mixin
Sử dụng từ khóa `mixin` để định nghĩa và từ khóa `with` để áp dụng vào một class.

```dart
mixin Swimmer {
  void swim() => print("Đang bơi...");
}

mixin Flyer {
  void fly() => print("Đang bay...");
}

class Duck with Swimmer, Flyer {}

void main() {
  var d = Duck();
  d.swim();
  d.fly();
}
```

## 2. Tại sao dùng Mixin?
- Dart không hỗ trợ Đa kế thừa (một class kế thừa từ nhiều class). Mixin giải quyết vấn đề này.
- Giúp tránh việc lặp lại mã nguồn cho các hành vi chung.
- Giữ cho cấu trúc phân cấp lớp (class hierarchy) sạch sẽ hơn.

## 3. Ràng buộc Mixin (on keyword)
Bạn có thể giới hạn mixin chỉ được sử dụng cho các class kế thừa từ một class cụ thể bằng từ khóa `on`.

```dart
class Animal {}

mixin Mammal on Animal {
  void walk() => print("Đang đi bộ...");
}

class Dog extends Animal with Mammal {}
// class Car with Mammal {} // Lỗi vì Car không phải là Animal
```

## 4. Thứ tự ưu tiên (Linearization)
Khi một class sử dụng nhiều mixin có các hàm trùng tên, mixin khai báo sau cùng sẽ có độ ưu tiên cao nhất (ghi đè lên các mixin trước).

```dart
mixin A { void test() => print("A"); }
mixin B { void test() => print("B"); }

class C with A, B {}

void main() {
  C().test(); // In ra "B"
}
```

## 5. Mixin class
Từ Dart 3.0, bạn có thể khai báo `mixin class`. Đây là những class có thể được sử dụng vừa làm class thông thường (kế thừa `extends`), vừa làm mixin (`with`).

## Lưu ý
- Mixin không thể có constructor.
- Mixin được sử dụng để đóng gói các hành vi độc lập.

## Tài liệu tham khảo
1. Dart Documentation - Mixins: https://dart.dev/language/mixins
2. Medium - Understanding Mixins in Dart: https://medium.com/flutter-community/dart-what-are-mixins-4a72344416f0
3. Dart 3 Mixin Classes: https://dart.dev/language/mixin-class

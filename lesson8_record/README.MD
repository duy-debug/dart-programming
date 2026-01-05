# Lesson 8: Records - Kiểu Dữ Liệu Bản Ghi

## Giới thiệu
Records là một kiểu dữ liệu tập hợp (collection type) ẩn danh và bất biến (immutable), được giới thiệu từ phiên bản Dart 3.0. Records cho phép bạn đóng gói nhiều đối tượng vào một đối tượng duy nhất mà không cần định nghĩa class.

## 1. Khai báo Records
Records sử dụng dấu ngoặc đơn `()` để bao quanh các phần tử. Các phần tử có thể được đặt tên hoặc chỉ định theo vị trí.

### Ví dụ cơ bản
```dart
void main() {
  // Record với các trường theo vị trí (positional fields)
  var record1 = ('first', 2, true);
  
  // Record với các trường được đặt tên (named fields)
  var record2 = (name: 'Duy', age: 21, isStudent: true);
}
```

## 2. Truy cập các trường trong Record
- Đối với trường theo vị trí: Sử dụng cú pháp `.$n` (bắt đầu từ 1).
- Đối với trường được đặt tên: Sử dụng tên trực tiếp.

```dart
void main() {
  var record = ('Apple', price: 10, 500);
  
  print(record.$1);    // Apple
  print(record.$2);    // 500
  print(record.price); // 10
}
```

## 3. Kiểu dữ liệu của Record
Kiểu của record được xác định bởi kiểu của các trường chứa trong nó.

```dart
(String, int) record = ('A', 1);
({String name, int age}) namedRecord = (name: 'B', age: 2);
```

## 4. Trả về nhiều giá trị từ hàm
Trước Dart 3.0, để trả về nhiều giá trị, bạn phải dùng List, Map hoặc Class. Với Records, việc này trở nên đơn giản và an toàn hơn.

```dart
(double, double) getCoordinates() {
  return (10.5, 20.7);
}

void main() {
  var (lat, long) = getCoordinates(); // Sử dụng destructuring
  print('Vĩ độ: $lat, Kinh độ: $long');
}
```

## 5. So sánh Records
Hai records được coi là bằng nhau nếu chúng có cấu trúc giống nhau (cùng số lượng, cùng kiểu và cùng tên các trường) và các giá trị tương ứng bằng nhau.

```dart
void main() {
  var a = (1, 2);
  var b = (1, 2);
  print(a == b); // true
}
```

## 6. Tính bất biến (Immutability)
Các trường trong Record không thể thay đổi sau khi được tạo. Nếu bạn cần thay đổi, bạn phải tạo một Record mới.

## Tài liệu tham khảo
1. Dart Documentation - Records: https://dart.dev/language/records
2. Dart 3 announcement: https://medium.com/dartlang/announcing-dart-3-53f2ee96a244
3. Records on Flutter: https://docs.flutter.dev/release/whats-new#records-and-patterns

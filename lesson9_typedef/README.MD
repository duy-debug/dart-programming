# Lesson 9: Typedef - Định Nghĩa Bí Danh Kiểu

## Giới thiệu
Typedef (Type Alias) là một cách để đặt một cái tên mới (bí danh) cho một kiểu dữ liệu hiện có. Điều này giúp mã nguồn trở nên ngắn gọn, dễ đọc và dễ bảo trì hơn, đặc biệt khi làm việc với các kiểu dữ liệu phức tạp.

## 1. Cú pháp Typedef
Kể từ Dart 2.13, typedef có thể được sử dụng cho cả hàm và các kiểu dữ liệu không phải hàm (non-function types).

### Typedef cho hàm
```dart
typedef MathOperation = int Function(int a, int b);

int add(int a, int b) => a + b;
int multiply(int a, int b) => a * b;

void main() {
  MathOperation op = add;
  print(op(10, 5)); // 15
}
```

### Typedef cho kiểu dữ liệu phức tạp
```dart
typedef JsonMap = Map<String, dynamic>;
typedef StringList = List<String>;

void main() {
  JsonMap data = {'id': 1, 'name': 'Duy'};
  StringList names = ['A', 'B', 'C'];
}
```

## 2. Ưu điểm của Typedef
- Rút ngắn các kiểu dữ liệu generic phức tạp.
- Giúp code mang tính ngữ nghĩa (semantic) hơn. Ví dụ, `typedef UserId = int;` nói rõ mục đích của biến hơn là chỉ dùng `int`.
- Dễ dàng thay đổi kiểu dữ liệu ở một nơi duy nhất.

## 3. Typedef với Generic
Typedef hoàn toàn hỗ trợ generic, cho phép tạo ra các bí danh linh hoạt.

```dart
typedef ListMapper<T> = Map<String, List<T>>;

void main() {
  ListMapper<int> scoreMap = {
    'class_A': [8, 9, 10],
    'class_B': [7, 8],
  };
}
```

## 4. Sự khác biệt với Inline Function Types
Trước đây, các hàm callback thường được định nghĩa trực tiếp. Typedef giúp tách định nghĩa này ra để tái sử dụng.

```dart
// Không dùng typedef
void process(int Function(int) callback) { ... }

// Dùng typedef
typedef Transformer = int Function(int);
void process(Transformer callback) { ... }
```

## Lưu ý
- Typedef không tạo ra một kiểu dữ liệu mới, nó chỉ là một cái tên khác cho kiểu cũ.
- Khi sử dụng typedef cho hàm, nó giúp kiểm tra kiểu (type checking) tại thời điểm biên dịch chính xác hơn.

## Tài liệu tham khảo
1. Dart Documentation - Typedefs: https://dart.dev/language/typedefs
2. Effective Dart - Design Typedefs: https://dart.dev/guides/language/effective-dart/design#prefer-inline-function-types-over-typedefs-for-functions
3. Dart 2.13 release notes: https://medium.com/dartlang/announcing-dart-2-13-c6d547b57ed

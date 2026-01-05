# Bài Thực Hành: Vòng Lặp (Loops)

## Giới thiệu
Vòng lặp (Loops) cho phép thực thi một khối mã nhiều lần. Dart cung cấp các loại vòng lặp phổ biến giúp xử lý danh sách, thực hiện các tác vụ lặp lại và kiểm soát luồng chương trình một cách hiệu quả.

## 1. Các loại vòng lặp trong Dart

### Vòng lặp For
Sử dụng khi biết trước số lần lặp.

```dart
for (var i = 0; i < 5; i++) {
  print(i);
}
```

### Vòng lặp For-In
Dùng để duyệt qua các phần tử của một Iterable (như List, Set).

```dart
var fruits = ['Táo', 'Chuối', 'Cam'];
for (var fruit in fruits) {
  print(fruit);
}
```

### Vòng lặp While
Thực hiện lặp khi điều kiện còn đúng. Kiểm tra điều kiện trước khi thực thi.

```dart
int i = 0;
while (i < 5) {
  print(i);
  i++;
}
```

### Vòng lặp Do-While
Tương tự while nhưng thực hiện khối mã ít nhất một lần trước khi kiểm tra điều kiện.

```dart
int j = 0;
do {
  print(j);
  j++;
} while (j < 5);
```

## 2. Điều khiển vòng lặp

### Break
Dùng để thoát khỏi vòng lặp ngay lập tức.

```dart
for (var i = 0; i < 10; i++) {
  if (i == 3) break; // Thoát khi i = 3
  print(i);
}
```

### Continue
Dùng để bỏ qua phần còn lại của lần lặp hiện tại và chuyển sang lần lặp kế tiếp.

```dart
for (var i = 0; i < 5; i++) {
  if (i == 2) continue; // Bỏ qua lần lặp i = 2
  print(i);
}
```

## 3. Ứng dụng vòng lặp
- Duyệt và xử lý dữ liệu trong danh sách.
- Tạo menu lựa chọn cho người dùng (thường dùng do-while).
- Thực hiện các thuật toán tính toán (giai thừa, số nguyên tố, v.v.).

## Lưu ý bài thực hành
- Tránh tạo ra vòng lặp vô hạn (infinite loop) bằng cách đảm bảo điều kiện dừng luôn đạt được.
- Sử dụng vòng lặp phù hợp với cấu trúc dữ liệu đang xử lý.

## Tài liệu tham khảo
1. Dart Control Flow - Loops: https://dart.dev/language/control-flow#for-loops
2. W3Schools Dart Loops: https://www.w3schools.io/languages/dart-loops/

# Bài Thực Hành: Cấu Trúc Điều Kiện If-Else

## Giới thiệu
Cấu trúc điều kiện `if-else` là một thành phần cơ bản trong lập trình, cho phép chương trình đưa ra các quyết định dựa trên các điều kiện cụ thể. Trong bài thực hành này, chúng ta sẽ áp dụng kiến thức về `if-else` để giải quyết một bài toán thực tế: Giải phương trình bậc 2.

## 1. Cấu trúc If-Else trong Dart

### If cơ bản
```dart
if (điều_kiện) {
  // Thực thi nếu đúng
}
```

### If-Else
```dart
if (điều_kiện) {
  // Thực thi nếu đúng
} else {
  // Thực thi nếu sai
}
```

### If-Else If-Else
```dart
if (điều_kiện_1) {
  // ...
} else if (điều_kiện_2) {
  // ...
} else {
  // ...
}
```

## 2. Bài tập: Giải phương trình bậc 2 (ax² + bx + c = 0)

### Kiến thức toán học
Để giải phương trình bậc 2, chúng ta cần:
1. Xác định các hệ số a, b, c (trong đó a ≠ 0).
2. Tính biệt thức Delta: `Δ = b² - 4ac`.
3. Dựa vào giá trị của Delta để kết luận nghiệm:
   - Nếu Δ < 0: Phương trình vô nghiệm.
   - Nếu Δ = 0: Phương trình có nghiệm kép `x = -b / 2a`.
   - Nếu Δ > 0: Phương trình có 2 nghiệm phân biệt `x = (-b ± √Δ) / 2a`.

### Các bước thực hiện trong code
- Sử dụng `stdin.readLineSync()` để nhận input từ bàn phím.
- Sử dụng `double.tryParse()` để chuyển đổi dữ liệu an toàn.
- Sử dụng cấu trúc `do-while` để yêu cầu nhập lại nếu hệ số a = 0.
- Sử dụng thư viện `dart:math` để dùng hàm `sqrt()` (tính căn bậc 2).
- Sử dụng cấu trúc `if-else if-else` để xét các trường hợp của Delta.

## 3. Lưu ý khi thực hành
- Luôn kiểm tra tính hợp lệ của dữ liệu đầu vào.
- Chú ý xử lý trường hợp chia cho 0.
- Định dạng kết quả đầu ra (ví dụ: dùng `toStringAsFixed`) để dễ quan sát.

## Tài liệu tham khảo
1. Wikipedia - Phương trình bậc hai: https://vi.wikipedia.org/wiki/Ph%C6%B0%C6%A1ng_tr%C3%ACnh_b%E1%BA%ADc_hai
2. Dart Control Flow: https://dart.dev/language/control-flow

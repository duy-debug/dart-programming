# Lesson 7: Runes - Xử Lý Ký Tự Unicode

## Giới thiệu
Trong Dart, chuỗi (String) là một dãy các đơn vị mã UTF-16 (16-bit code units). Tuy nhiên, một số ký tự đặc biệt như emoji hoặc các biểu tượng cổ đại yêu cầu 32 bit để biểu diễn. Runes là cách Dart biểu diễn giá trị Unicode 32-bit (Unicode Code Point) của một ký tự.

## 1. Unicode Code Point
Unicode định nghĩa một giá trị số duy nhất cho mọi chữ cái, con số và biểu tượng được sử dụng trong tất cả các hệ thống viết trên thế giới. Vì String trong Dart là UTF-16, nên các ký tự nằm ngoài Basic Multilingual Plane (BMP) sẽ được biểu diễn bởi "surrogate pairs" (cặp thay thế).

## 2. Cách sử dụng Runes
Để biểu diễn một code point Unicode, bạn sử dụng cú pháp `\uXXXX` trong đó XXXX là giá trị hex 4 chữ số. Đối với các giá trị nhiều hơn hoặc ít hơn 4 chữ số hex, hãy đặt giá trị trong dấu ngoặc nhọn `{}`.

### Ví dụ cơ bản
```dart
void main() {
  var heart = '\u2665';
  var emoji = '\u{1f600}';
  print(heart); // ♥
  print(emoji); // 😀
}
```

## 3. Thuộc tính runes của String
Mỗi String có thuộc tính `runes` trả về một Iterable chứa các code point Unicode của chuỗi đó.

### Ví dụ truy cập runes
```dart
void main() {
  String text = "Lập trình Dart 😀";
  print(text.length); // 16 (emoji chiếm 2 đơn vị mã UTF-16)
  print(text.runes.length); // 15 (emoji là 1 code point duy nhất)
  
  text.runes.forEach((int rune) {
    var character = String.fromCharCode(rune);
    print('Code point: $rune - Ký tự: $character');
  });
}
```

## 4. Chuyển đổi Runes sang String
Bạn có thể sử dụng constructor `String.fromCharCodes` để tạo chuỗi từ một danh sách các code point.

```dart
void main() {
  var input = [0x1f600, 0x1f601, 0x1f602];
  var text = String.fromCharCodes(input);
  print(text); // 😀😁😂
}
```

## 5. Tại sao cần Runes?
- Đảm bảo xử lý chính xác các ký tự đặc biệt, emoji.
- Tránh việc cắt ngang một surrogate pair khi thao tác với chuỗi (như substring).
- Hỗ trợ các ngôn ngữ có hệ thống ký tự phức tạp.

## Lưu ý quan trọng
Trong hầu hết các trường hợp, bạn sẽ sử dụng `String` thông thường. `Runes` thường chỉ được sử dụng khi bạn cần thao tác sâu ở mức độ ký tự đơn lẻ hoặc xử lý các biểu tượng emojis phức tạp.

## Tài liệu tham khảo
1. Dart News - Unicode in Dart: https://medium.com/dartlang/unicode-in-dart-4309995f9c46
2. Dart API Reference - Runes class: https://api.dart.dev/stable/dart-core/Runes-class.html
3. Unicode Character Table: https://unicode-table.com/

# Lesson 13: Stream - Dòng Dữ Liệu

## Giới thiệu
Nếu `Future` đại diện cho một giá trị duy nhất trả về trong tương lai, thì `Stream` đại diện cho một chuỗi (dòng) các giá trị có thể được trả về theo thời gian. Bạn có thể coi Stream giống như một vòi nước (phát ra nước) hoặc một hệ thống đăng ký nhận thông báo.

## 1. Cách hoạt động của Stream
Stream thông báo cho bạn khi có một phần tử mới sẵn sàng, khi không còn phần tử nào nữa, hoặc khi có lỗi xảy ra. Bạn "lắng nghe" (listen) một Stream để nhận dữ liệu.

## 2. Các loại Stream
- Single-subscription Streams: Chỉ cho phép một người lắng nghe duy nhất. Nếu đăng ký lần 2 sẽ xảy ra lỗi.
- Broadcast Streams: Cho phép nhiều người lắng nghe cùng lúc. Phù hợp cho các sự kiện như click chuột hoặc thông báo toàn hệ thống.

## 3. Tạo Stream đơn giản

### Sử dụng Stream.fromIterable
```dart
void main() {
  var stream = Stream.fromIterable([1, 2, 3, 4, 5]);
  
  stream.listen((data) {
    print("Dữ liệu: $data");
  });
}
```

### Sử dụng async* (Generator)
```dart
Stream<int> countStream(int max) async* {
  for (int i = 1; i <= max; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i; // Trả về từng giá trị
  }
}

void main() async {
  var stream = countStream(5);
  await for (var value in stream) {
    print(value);
  }
}
```

## 4. Xử lý dữ liệu từ Stream
Bạn có thể sử dụng các hàm như `map`, `where`, `take` để biến đổi Stream giống như List.

```dart
void main() {
  var stream = Stream.fromIterable([1, 2, 3, 4, 5]);
  
  stream
    .where((x) => x % 2 == 0) // Lọc số chẵn
    .map((x) => "Số $x")       // Biến đổi
    .listen(print);
}
```

## 5. StreamController
Để kiểm soát Stream một cách thủ công, bạn sử dụng `StreamController`.

```dart
import 'dart:async';

void main() {
  var controller = StreamController<String>();
  
  controller.stream.listen((data) => print(data));
  
  controller.add("Sự kiện 1");
  controller.add("Sự kiện 2");
  controller.close(); // Đóng stream
}
```

## 6. Xử lý lỗi trong Stream
```dart
stream.listen(
  (data) => print(data),
  onError: (err) => print("Lỗi: $err"),
  onDone: () => print("Hoàn thành"),
  cancelOnError: false,
);
```

## Tài liệu tham khảo
1. Dart Documentation - Streams: https://dart.dev/tutorials/language/streams
2. Dart API - Stream class: https://api.dart.dev/stable/dart-async/Stream-class.html
3. Reactive Programming in Dart: https://resocoder.com/2019/07/13/dart-streams-tutorial-intro-to-reactive-programming/

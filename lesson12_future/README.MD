# Lesson 12: Future - Lập Trình Bất Đồng Bộ

## Giới thiệu
Lập trình bất đồng bộ (Asynchronous programming) cho phép chương trình tiếp tục thực hiện các tác vụ khác trong khi chờ đợi một tác vụ tốn thời gian hoàn thành (như tải dữ liệu từ internet, đọc file, hoặc truy vấn database). Trong Dart, `Future` là đối tượng đại diện cho kết quả của một tác vụ bất đồng bộ.

## 1. Trạng thái của Future
Một Future có hai trạng thái chính:
- Uncompleted (Chưa hoàn thành): Đang chờ đợi tác vụ thực hiện xong.
- Completed (Đã hoàn thành): Tác vụ đã xong và trả về kết quả (Value) hoặc xảy ra lỗi (Error).

## 2. Cách tạo Future
Sử dụng `Future.delayed` để mô phỏng một tác vụ tốn thời gian.

```dart
Future<String> fetchData() {
  return Future.delayed(
    Duration(seconds: 2),
    () => "Dữ liệu đã tải xong"
  );
}
```

## 3. Xử lý Future với async và await
Đây là cách phổ biến và dễ đọc nhất để làm việc với mã bất đồng bộ.

```dart
void main() async {
  print("Bắt đầu...");
  
  // Dùng await để đợi kết quả
  String data = await fetchData();
  
  print(data);
  print("Kết thúc.");
}
```

Quy tắc:
- `await` chỉ được dùng trong hàm có từ khóa `async`.
- `await` sẽ tạm dừng hàm hiện tại cho đến khi Future hoàn thành.

## 4. Xử lý Future với .then()
Cách làm việc theo phong cách callback.

```dart
void main() {
  print("Bắt đầu...");
  
  fetchData().then((value) {
    print(value);
  }).catchError((error) {
    print("Có lỗi xảy ra: $error");
  });
  
  print("Làm việc khác trong khi chờ...");
}
```

## 5. Xử lý lỗi (Error Handling)
Khi sử dụng async/await, bạn sử dụng khối lệnh `try-catch`.

```dart
Future<void> fetchUser() async {
  try {
    var user = await fetchData();
    print(user);
  } catch (err) {
    print("Lỗi: $err");
  } finally {
    print("Hoàn tất tiến trình.");
  }
}
```

## 6. Future.wait()
Sử dụng khi bạn muốn thực hiện nhiều tác vụ bất đồng bộ cùng lúc và chờ tất cả hoàn thành.

```dart
void main() async {
  var results = await Future.wait([
    fetchData(),
    Future.delayed(Duration(seconds: 1), () => "Task 2")
  ]);
  print(results); // ["Dữ liệu đã tải xong", "Task 2"]
}
```

## Tài liệu tham khảo
1. Dart Documentation - Asynchronous programming: https://dart.dev/codelabs/async-await
2. Dart API - Future class: https://api.dart.dev/stable/dart-async/Future-class.html
3. Flutter - Asynchronous programming: https://docs.flutter.dev/cookbook/networking/fetch-data

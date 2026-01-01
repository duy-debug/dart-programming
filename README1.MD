# Hướng Dẫn Cài Đặt Dart SDK trên Windows cho VS Code

Tài liệu này hướng dẫn chi tiết các bước để cài đặt và cấu hình môi trường phát triển Dart trên hệ điều hành Windows, cũng như thiết lập Visual Studio Code.

## Bước 1: Tải Dart SDK

1.  Truy cập trang chính thức của Dart: [https://dart.dev/get-dart](https://dart.dev/get-dart)
2.  Chọn tab **Windows**.
3.  Tải xuống file cài đặt Dart SDK (thường là file `.zip` hoặc dùng trình quản lý gói như Chocolatey, nhưng cách thủ công phổ biến nhất là tải **Dart SDK** dưới dạng file nén `dartsdk-windows-x64-release.zip`).

## Bước 2: Cài đặt Dart SDK

1.  Giải nén file vừa tải về.
2.  Di chuyển thư mục `dart-sdk` đã giải nén đến một vị trí cố định trên ổ cứng.
    *   *Ví dụ khuyến nghị:* `C:\dart\`
    *   Lúc này đường dẫn đến thư mục `bin` sẽ là: `C:\dart\dart-sdk\bin`

## Bước 3: Cấu hình biến môi trường (PATH)

Để chạy lệnh `dart` từ bất kỳ đâu trong Command Prompt (CMD) hoặc Terminal, bạn cần thêm Dart vào biến môi trường PATH.

1.  **Mở System Properties**:
    *   Nhấn tổ hợp phím `Windows + R`.
    *   Nhập `sysdm.cpl` và nhấn **Enter**.
2.  **Mở Environment Variables**:
    *   Chọn tab **Advanced**.
    *   Nhấn nút **Environment Variables...** ở góc dưới.
3.  **Thêm Dart vào PATH**:
    *   Trong phần **System variables** (biến hệ thống) ở phía dưới, tìm biến có tên là `Path` và chọn nó → nhấn **Edit**.
    *   Nhấn **New**.
    *   Dán đường dẫn đến thư mục `bin` của Dart SDK. Ví dụ: `C:\dart\dart-sdk\bin`
    *   Nhấn **OK** liên tục để lưu và đóng tất cả các cửa sổ.

> **Lưu ý:** Sau khi cấu hình, bạn cần khởi động lại máy hoặc ít nhất là tắt và mở lại CMD/Terminal để thay đổi có hiệu lực.

## Bước 4: Kiểm tra cài đặt

1.  Mở **Command Prompt** (CMD) hoặc **PowerShell**.
2.  Chạy lệnh sau:
    ```cmd
    dart --version
    ```
3.  Nếu cài đặt thành công, bạn sẽ thấy thông báo tương tự:
    ```
    Dart SDK version: 3.x.x ...
    ```

## Bước 5: Cài đặt Extension cho VS Code

1.  Mở **Visual Studio Code**.
2.  Vào phần Extensions (hoặc nhấn `Ctrl + Shift + X`).
3.  Tìm kiếm từ khóa: `Dart`.
4.  Cài đặt Extension chính chủ: **Dart** (by Dart Code).

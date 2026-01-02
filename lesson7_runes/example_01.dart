void main(){
  // ĐỊNH NGHĨA RUNES
  // - Runes là tập hợp các mã Unicode đại diện cho các ký tự trong chuỗi.
  // - Mỗi ký tự trong chuỗi có thể được biểu diễn bằng một hoặc nhiều mã Unicode.
  // - Runes cho phép làm việc với các ký tự đặc biệt, ký tự đa byte và các ngôn ngữ khác nhau một cách chính xác.
  
  // Cách khai báo:
  String str = 'Hello world!';
  Runes runes1 = str.runes;
  Runes runes2 = Runes('\u2665'); // Sử dụng mã Unicode kí tự trái tim
  print("Runes1: $runes1");
  Runes runes3 = Runes('Hello \u{1F600}'); //  Emoji mặt cười
  print("Runes3: $runes3");


  // Các phương thức và thuộc tính
  // Chuyển đổi từ Runes sang String
  String strFromRunes2 = String.fromCharCodes(runes2);
  print("String from Runes2: $strFromRunes2");
  String strFromRunes3 = String.fromCharCodes(runes3);
  print("String from Runes3: $strFromRunes3");

  // Xử lý 
  print(runes1.length); // Độ dài của Runes1
  print(runes2.length); // Độ dài của Runes2
  print(runes3.length); // Độ dài của Runes3
  print(runes1.first); // Mã Unicode đầu tiên trong Runes1
  print(runes2.last); // Mã Unicode cuối cùng trong Runes2

  // Duyệt qua từng điểm mã 
  runes3.forEach((int rune){
    print('Unicode: $rune, Ký tự: ${String.fromCharCode(rune)}');
  });

  // Kiểm tra  
  print(runes1.isEmpty); // Kiểm tra Runes1 có rỗng không
  print(runes2.isNotEmpty); // Kiểm tra Runes2 không rỗng

  // ỨNG DỤNG
  // Xử lý emoji trong ứng dụng chat
  // Hiển thị ký tự đặc biệt trong giao diện người dùng
  // Xử lý đa ngôn ngữ có ký tự đặc biệt
  // Phân tích và xử lý văn bản phức tạp
  // Tạo và xử lý biểu tượng cảm xúc tùy chỉnh
  // Xử lý dữ liệu văn bản từ các nguồn khác nhau
  // Tạo các công cụ xử lý văn bản nâng cao
  // Xử lý văn bản trong các ứng dụng trò chơi
  // Tạo các hiệu ứng văn bản đặc biệt trong giao diện người dùng
  // Xử lý văn bản trong các ứng dụng thực tế ảo (VR) và tăng cường (AR)
  // Tạo các công cụ dịch thuật và chuyển đổi ngôn ngữ
  // Xử lý văn bản trong các ứng dụng giáo dục và học tập
  // Tạo các công cụ phân tích ngôn ngữ tự nhiên (NLP)
  // Xử lý văn bản trong các ứng dụng mạng xã hội
  // Tạo các công cụ tìm kiếm và phân loại văn bản
  // Xử lý văn bản trong các ứng dụng thương mại điện tử
  // Tạo các công cụ tạo nội dung tự động
  // Xử lý văn bản trong các ứng dụng y tế và chăm sóc sức khỏe
  // Tạo các công cụ quản lý tài liệu và lưu trữ văn bản
  // Xử lý văn bản trong các ứng dụng tài chính và ngân hàng...
}
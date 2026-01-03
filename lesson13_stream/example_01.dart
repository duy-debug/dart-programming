/*
Stream là gì?
Nếu Future giống như đợi một món ăn, thì Stream giống như xem một kênh Youtube:

Bạn đăng ký kênh (lắng nghe stream)
Video mới liên tục được đăng tải (Stream phát ra dữ liệu)
Bạn xem từng video khi nó xuất hiện (xử lý dữ liệu từ stream)
Kênh có thể đăng tải nhiều video theo thời gian (stream phát nhiều giá trị)

Stream trong Dart là chuỗi các sự kiện hoặc dữ liệu theo thời gian, không chỉ một lần như Future.
*/

void viDuStreamNamMuoi(){
  print("Ví dụ 1: Stream trò chơi năm mười");
  // Tạo ra stream đếm số (phát ra con số từ 0, 5, 10, ..., 100)
  Stream<int> stream = Stream.periodic(Duration(seconds: 1), (x)=>x+0).take(21);
  // Lắng nghe
  stream.listen(
    (x) => print("Nghe dược số: ${x*5} - đang chạy trốn!"), onDone: () => print("Người bị năm mười: bắt đầu đi tìm vì năm mười tới 100 rồi!"),
    onError: (loi) => print("Có về đề đang đếm bị đau bụng không chơi nữa $loi ")
  );
}
void main(){
  viDuStreamNamMuoi(); 
}
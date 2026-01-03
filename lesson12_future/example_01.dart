import 'dart:async';
/*
Future là gì?
Hãy tưởng tượng bạn gọi món ăn tại một nhà hàng:
+ Bạn đặt món (gọi một hàm)
+ Nhân viên phục vụ nói "vâng, tôi sẽ mang món ăn đến sau" (nhận về một Future)
+ Bạn có thể làm việc khác trong lúc chờ đợi (tiếp tục chạy code) 
Khi món ăn được phục vụ (Future hoàn thành), bạn có thể thưởng thức nó (sử dụng kết quả)

Future trong Dart cũng hoạt động tương tự.
Đó là một cách để làm việc với các tác vụ ,mất thời gian mà không phải chờ đợi (ví dụ: tải dữ liệu từ internet, đọc tệp).

Hiểu rõ về "async/await"
async và await là hai từ khóa đặc biệt trong Dart giúp làm việc với Future dễ dàng hơn. 

Từ khóa async:
 - Khi thêm từ khóa async vào một hàm,
 bạn đang nói với Dart: "Hàm này sẽ chứa code bất đồng bộ".

*/
/*
Từ khóa await
- await chỉ có thể được sử dụng bên trong một hàm async
Khi bạn đặt await trước một Future, Dart sẽ:
- Tạm dừng thực thi hàm tại dòng đó
- Đợi Future hoàn thành
- Trả về giá trị Future (không còn đóng gói trong Future nữa)
- Tiếp tục thực thi những dòng code còn lại 
*/
Future<String>layTen() async{
  return "Duy";
}
Future<String> downLoadFile(){
  return Future.delayed(
    Duration(seconds: 2),
    () => "Du lieu da tai xong"
  );
}
// Gọi hàm cách 1 bất đồng bộ
void hamChinh() async{
  print("Bắt đầu tải");
  Future<String> f = downLoadFile();
  f.then((result){
    print("Result: $result");
  });
  print("Tiếp tục công việc khác.");
}
// Gọi hàm cách 2 đồng bộ
void hamChinh1() async{
  print("Bắt đầu tải");
  String result = await downLoadFile();
  print("Result: $result");
  print("Tiếp tục công việc khác.");
}
void main(){
  // hamChinh();
  hamChinh1();
}

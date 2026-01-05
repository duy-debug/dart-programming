/*
Bài tập 3: 
1. Viết hàm để kiểm tra một danh sách có chứa các phần tử giống nhau hay không (để 
đơn giản, có thể sử dụng danh sách số nguyên). 
2. Nghịch lý Ngày sinh nhật (Birthday Paradox) được phát biểu như sau: “Trong một 
nhóm có 23 người bất kỳ, xác suất để có hai người có cùng một ngày sinh nhật là 
không ít hơn ½”. 
Hãy kiểm tra lại giả thuyết trên bằng thực nghiệm.
*/
import 'dart:math';

// Hàm của bạn: Rất tối ưu vì có thể dừng ngay khi thấy trùng (Early Exit)
bool kiemTraTrungLap(List<int> danhSach){
    Set<int> tapHop = {};
    for(int x in danhSach){
        if(tapHop.contains(x)) {
            return true; // có phần tử trùng -> dừng ngay
        }
        tapHop.add(x);
    }
    return false;
}

// Phần 2: Thực nghiệm nghịch lý ngày sinh nhật
void thucNghiemBirthdayParadox() {
  int soLanThu = 1000000; // Thử 1,000,000 lần để kết quả chính xác
  int soLanTrung = 0;
  var rand = Random();

  for (int i = 0; i < soLanThu; i++) {
    List<int> sinhNhatNhom = [];
    // Tạo nhóm 23 người với ngày sinh ngẫu nhiên từ 1 đến 365
    for (int j = 0; j < 23; j++) {
      sinhNhatNhom.add(rand.nextInt(365) + 1);
    }

    // Tận dụng hàm tối ưu của bạn để kiểm tra
    if (kiemTraTrungLap(sinhNhatNhom)) {
      soLanTrung++;
    }
  }
  print("So lan trung: $soLanTrung");
  double tyLe = (soLanTrung / soLanThu) * 100;
  print("--- Birthday Paradox ---");
  print("Thử nghiệm $soLanThu lần với nhóm 23 người.");
  print("Kết quả: ${tyLe.toStringAsFixed(2)}% số nhóm có người trùng ngày sinh.");
}

void main(){
    // Test phần 1
    List<int> danhSach = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 1];
    print(kiemTraTrungLap(danhSach));

    // Test phần 2
    thucNghiemBirthdayParadox();
}
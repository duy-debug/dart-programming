/*
Bài tập 4: 
1. Sử dụng phương thức map của List để chuyển một danh sách các chuỗi thành danh 
sách chiều dài của các chuỗi đó. 
input: ["hello", "dart", "flutter"]
out: [5, 4, 7]
2. Sử dụng phương thức forEach của List để in ra bình phương các phần tử của một 
danh sách. 
*/
import 'dart:math';
import 'dart:io';
void main(){
  List<String> danhSachChuoi = [];
  int n;
  do{
    stdout.write("Nhap n danh sach: ");
    n = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
  }while(n==0);
  for(int i = 0; i < n; i++){
    danhSachChuoi.add(stdin.readLineSync()!);
  }
  print(danhSachChuoi);
  List<int> doDaiChuoi = danhSachChuoi.map((element) => element.length).toList();
  print("Do dai chuoi: $doDaiChuoi");
  List<double> danhSachSo = [];
  for(int i = 0; i < n; i++){
    stdout.write("Nhap so: ");
    danhSachSo.add(double.tryParse(stdin.readLineSync() ?? '') ?? 0);
  }
  danhSachSo.forEach((element){
    print("$element*$element = ${pow(element,2)}");
  });
}
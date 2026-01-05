/*
Bài tập 5: Future Type 
1. Viết hàm lateNum trả về một số nguyên ngẫu nhiên sau khi thực hiện lời gọi hàm 
1s. 
2.  Kiểm tra số trả về bởi hàm lateNum là chẵn hay lẽ (in kết quả ra màn hình). 
Hướng dẫn:  
1 
1.  - Google keyword: “Generate random numbers in Dart” 
    - Hàm lateNum có thể viết như sau:
*/
import 'dart:math';

Future<int> lateNum(){
  return Future.delayed(
    Duration(seconds: 1)
  ).then((value) => Random().nextInt(1000),);
}
void main() async{
  int so = await lateNum();
  print(so);
  if(so % 2 == 0){
    print("$so la so chan");
  }
  else{
    print("So le");
  }
}
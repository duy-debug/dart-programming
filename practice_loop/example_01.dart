void main(){
  // vòng lặp for
  print("------------");
  for(var i = 0; i <= 5; i++){
    print(i);
  }

  // Iterable: List, Set
  // for - in thường sử dụng nhiều hơn
  print("------------");
  var fullName = ["Tran", "Mai", "Ngoc", "Duy"];
  for(var name in fullName){
    print(name);
  }

  // Vòng lặp while
  print("------------");
  var i = 1;
  while(i<=5){
    print(i);
    i++;
  }

  // Vòng lặp do-while (thực hiện ít nhất một lặp)
  print("------------");
  var x = 1;
  do{
    print(x);
    x++;
  }while(x <= 5);

  // break / continue
  // break: thoát khỏi vòng lặp ngay lặp tức
  print("------------");
  var a = 0;
  do{
    print(a);
    a++;
    if(a == 3) break;
  }while(a <= 5);
  // continue: dùng để bỏ qua phần còn lại của vòng lặp và tiếp tục với lần lặp tiếp theo
  print("------------");
  var b = 0;
  do{
    b++;
    if(b == 3) {continue;}
    print(b);
  }while(b <= 5);
}

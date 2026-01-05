/*
Bài tập 6: Stream, async, async*, await 
- Viết hàm trả về một Stream<int> gồm 10 số nguyên. 
- Viết hàm tính tổng 10 số nguyên của Stream
*/
Stream<int> taoSoNguyen() async*{
  for(int i = 0; i < 10; i++){
    yield i; // yield phát ra từng giá trị trong Stream
  }
}
Future<int> sumStream(Stream<int> stream) async {
  int sum = 0;
  // await for dùng để duyệt từng phần tử của Stream
  await for (int number in stream) {
    sum += number;
  }
  return sum;
}
void main() async{
  int total = await sumStream(taoSoNguyen());
  print("Tong 10 so trong Stream: $total");
}
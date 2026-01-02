void main(){
  // ĐINH NGHĨA TYPEDEF
  // - Typedef trong Dart được sử dụng để định nghĩa một tên mới cho một kiểu dữ liệu hàm hay tạo các alias cho các kiểu dữ liệu phức tạp.
  // - Typedef giúp làm cho mã nguồn trở nên rõ ràng và dễ đọc hơn khi làm việc với các hàm phức tạp hoặc các hàm có nhiều tham số.
  // - Typedef cũng giúp tái sử dụng định nghĩa kiểu hàm trong nhiều nơi khác nhau trong mã nguồn.

  IntList l1 = [1,2,3,4,5];
  print(l1);

  List<int> l2 = [6,7,8,9,10];
  print(l2);
}
typedef IntList = List<int>;
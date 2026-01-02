void main(){
  // ĐỊNH NGHĨA 
  // - List là tập hợp các phần tử được sắp xếp theo thứ tự và có thể chứa các phần tử trùng lặp.
  // - Các phần tử trong List được truy cập thông qua chỉ số (index), bắt đầu từ 0.
  // - Kích thước của List có thể thay đổi (có thể thêm hoặc xóa phần tử).
  // TẠO LIST
  // Cách 0: Khai báo List với kiểu dữ liệu cụ thể
  List <String> fruits = ['Apple', 'Banana', 'Orange']; // Cách khai báo List với kiểu dữ liệu String
  
  // Cách 1: Sử dụng cú pháp literal với dấu []
  var list1 = [1, 2, 3, 4, 5];
  print("List1: $list1");

  // Cách 2: Sử dụng lớp List với phương thức from
  var list2 = List.from(['Dart', 'Flutter', 'Dart']);
  print("List2: $list2");

  // Cách 3: Sử dụng lớp List với phương thức filled để tạo List có kích thước cố định
  var list3 = List<int>.filled(5, 0); // Tạo List gồm 5 phần tử, mỗi phần tử có giá trị là 0
  print("List3: $list3");

  // TRUY CẬP PHẦN TỬ TRONG LIST
  print("Phần tử đầu tiên của List1: ${list1[0]}");
  print("Phần tử thứ hai của List2: ${list2[1]}");
  print("Phần từ đầu tiên của list1: ${list1.first}");
  print("Phần từ cuối cùng của list2: ${list2.last}");

  // THÊM PHẦN TỬ VÀO LIST
  list1.add(6); // Thêm phần tử 6 vào cuối List1
  list1.addAll([7, 8, 9]); // Thêm nhiều phần tử vào cuối List1
  print("List1 sau khi thêm phần tử: $list1");
  list2.insert(1, 'DartLang'); // Chèn 'DartLang' vào vị trí index 1 của List2
  list2.insertAll(2, ['React', 'Vue']); // Chèn nhiều phần tử vào vị trí index 2 của List2
  print("List2 sau khi chèn phần tử: $list2");

  // XÓA PHẦN TỬ KHỎI LIST
  list1.remove(3); // Xóa phần tử có giá trị 3 khỏi List1
  print("List1 sau khi xóa phần tử: $list1");
  list2.removeAt(0); // Xóa phần tử tại index 0 khỏi List2
  print("List2 sau khi xóa phần tử tại index 0: $list2");
  list1.removeLast(); // Xóa phần tử cuối cùng khỏi List1
  print("List1 sau khi xóa phần tử cuối cùng: $list1");
  list1.removeWhere((element) => element % 2 == 0); // Xóa tất cả phần tử chẵn khỏi List1 (xóa theo điều kiện)
  print("List1 sau khi xóa các phần tử chẵn: $list1");
  list1.clear(); // Xóa tất cả phần tử khỏi List1
  print("List1 sau khi xóa tất cả phần tử list1: $list1");

  // Kiểm tra 
  print(list1.isEmpty); // Kiểm tra List1 có rỗng không
  print(list2.isNotEmpty); // Kiểm tra List2 có không rỗng
  print(list2.contains('Dart')); // Kiểm tra List2 có chứa phần tử 'Dart' không
  print(list2.indexOf('Flutter')); // Lấy index của phần tử 'Flutter' trong List2
  print(list2.lastIndexOf('Dart')); // Lấy index cuối cùng của phần tử 'Dart' trong List2

  // Biến đổi
  var list5 = [2, 4, 3, 5, 10];
  print(list5);
  list5.sort(); // Sắp xếp List theo thứ tự tăng dần
  print("List5 sau khi sắp xếp tăng dần: $list5");
  print("List5 sau khi đảo ngược: ${list5.reversed}"); // Đảo ngược List
  list5.sort((a, b) => b.compareTo(a)); // Sắp xếp List theo thứ tự giảm dần
  print("List5 sau khi sắp xếp giảm dần: $list5");

  // Cắt và nối
  var subList = list5.sublist(1,4); // Lấy phần từ từ index 1 đến index 3
  print("Phần từ cắt từ List4: $subList");
  var str_joined = list5.join(', '); // Nối các phần tử trong List thành chuỗi, ngăn cách bởi ', '
  print("Chuỗi sau khi nối các phần tử trong List5: $str_joined");

  // Duyệt các phần tử trong List
  list5.forEach((element) {
    print("Phần tử trong List5: $element");
  });

  // LẤY ĐỘ DÀI CỦA LIST
  print("Độ dài của List1: ${list1.length}");
  print("Độ dài của List2: ${list2.length}");
}
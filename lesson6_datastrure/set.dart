import 'dart:math';
import 'dart:io';
void main(){
  // ĐỊNH NGHĨA SET
  // - Set là tập hợp các phần tử không được sắp xếp theo thứ tự và không chứa các phần tử trùng lặp.
  // - Các phần tử trong Set không thể truy cập thông qua chỉ số (index) vì chúng không có thứ tự cố định.
  // - Kích thước của Set có thể thay đổi (có thể thêm hoặc xóa phần tử).

  // TẠO SET
  // Cách 1: Sử dụng cú pháp literal với dấu {}
  var set1 = {'Dart', 'Flutter', 'Dart'}; // Tạo Set với phần tử trùng lặp
  print("Set1: $set1"); // In ra Set1, phần tử trùng lặp sẽ bị loại bỏ

  // Cách 2: Sử dụng lớp Set với phương thức from
  var set2 = Set.from([1, 2, 3, 2, 1]); // Tạo Set từ List với phần tử trùng lặp
  print("Set2: $set2"); // In ra Set2, phần tử trùng lặp sẽ bị loại bỏ

  // Cách 3: Khai báo Set với kiểu dữ liệu cụ thể
  Set<String> set3 = {'A', 'B', 'C'}; // Khai báo Set với kiểu dữ liệu cụ thể

  // THÊM PHẦN TỬ VÀO SET
  set1.add('DartLang'); // Thêm phần tử 'DartLang' vào Set1
  set1.addAll({'Flutter', 'Vue'}); // Thêm phần tử 'Flutter' và 'Vue' vào Set1 (phần tử trùng lặp sẽ không được thêm)
  print("Set1 sau khi thêm phần tử: $set1");

  // XÓA PHẦN TỬ KHỎI SET
  set2.remove(2); // Xóa phần tử 2 khỏi Set2
  print("Set2 sau khi xóa phần tử 2: $set2");
  set2.removeAll([1, 3]); // Xóa các phần tử 1 và 3 khỏi Set2
  print("Set2 sau khi xóa các phần tử 1 và 3: $set2");
  set2.removeWhere((element) => element % 2 == 0); // Xóa tất cả phần tử chẵn khỏi Set2 (xóa theo điều kiện)
  print("Set2 sau khi xóa các phần tử chẵn: $set2");
  set2.clear(); // Xóa tất cả phần tử khỏi Set2
  print("Set2 sau khi xóa tất cả phần tử: $set2");

  // KIỂM TRA
  print(set1.isEmpty); // Kiểm tra Set1 có rỗng không
  print(set2.isNotEmpty); // Kiểm tra Set2 có không rỗng
  print(set1.contains('Dart')); // Kiểm tra Set1 có chứa phần tử 'Dart' không

  // Các phep toán với tập hợp
  var setA = {1, 2, 3, 4};
  var setB = {3, 4, 5, 6};
  print("Giao của SetA và SetB: ${setA.intersection(setB)}"); // Giao của SetA và SetB {3, 4}
  print("Hợp của SetA và SetB: ${setA.union(setB)}"); // Hợp của SetA và SetB {1, 2, 3, 4, 5, 6}
  print("Hiệu của SetA và SetB: ${setA.difference(setB)}"); // Hiệu của SetA và SetB {1, 2}

  // Biến đổi
  var list = set1.toList(); // Chuyển Set1 thành List
  print("Set1 chuyển thành List: $list");
  var newSet = Set.from(list); // Chuyển List trở lại thành Set hoặc tạo set mới từ

  // Lọc và ánh xạ
  var filered = set1.where((a) => a.startsWith('D')); // Lọc các phần tử bắt đầu bằng chữ 'D'
  print("Các phần tử trong Set1 bắt đầu bằng chữ 'D': $filered");
  var mapped = set1.map((a) => a.toUpperCase()); // Chuyển tất cả phần tử thành chữ in hoa
  print("Set1 sau khi chuyển thành chữ in hoa: $mapped");

  // Duyệt từng phần tử trong Set
  set1.forEach((element) {
    print("Phần tử trong Set1: $element");
  });

  // VÍ DỤ THỰC TẾ
  // Quản lý danh sách bạn bè
  Set<String> friends = {'user1', 'user2', 'user3'};
  friends.add('user4'); // Thêm bạn mới được vì user4 chưa có set
  friends.add('user2'); // Không thêm được vì user2 đã có trong set
  print("Danh sách bạn bè: $friends");

  // Kiểm tra bạn bè
  bool isFriend = friends.contains('user3');
  
  // Đề xuất bạn bè mới
  Set<String> suggestedFriends = {'user3', 'user5', 'user6'};
  var newFriends = suggestedFriends.difference(friends);
  print("Bạn bè mới được đề xuất: $newFriends");
}
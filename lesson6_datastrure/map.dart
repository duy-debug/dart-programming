void main(){
  // ĐỊNH NGHĨA
  // - Map là một tập hợp các cặp key-value, trong đó mỗi key là duy nhất và được sử dụng để truy cập giá trị (value) tương ứng.
  // - Các phần tử trong Map không được sắp xếp theo thứ tự cụ thể
  // - Kích thước của Map có thể thay đổi (có thể thêm hoặc xóa cặp key-value).
  
  // TẠO MAP
  // Cách 1: Khai báo trực tiếp
  Map<String, dynamic> user = {
    'name': 'Lực',
    'age': 10,
    'class': 8,
    'school': 'THCS Nguyễn Trãi',
    'address': 'Khánh Hòa',
    'isStudent': true
  }; 

  // Cách 2: Sử dụng var
  var user1 = <String, dynamic>{
    'name': 'An',
    'age': 10,
    'class': 8,
    'school': 'THCS Trần Qúy Cáp',
    'address': 'Khánh Hòa',
    'isStudent': true
  }; 

  // Cách 3: Sử dụng cú pháp literal với dấu {}
  var map1 = {'key1': 'value1', 'key2': 'value2', 'key3': 'value3'};
  print("Map1: $map1");

  // Cách 4: Sử dụng lớp Map với phương thức from
  var map2 = Map.from({'keyA': 'valueA', 'keyB': 'valueB', 'keyC': 'valueC'});
  print("Map2: $map2");
  
  // Các phương thức truy cập giá trị trong Map
  user['email'] = 'luc@gmail.com'; // Thêm cặp key-value mới vào Map
  user['age'] = 20; // Cập nhật giá trị của key 'age' trong Map
  user.putIfAbsent('phone', () => '0123456789'); // Thêm cặp key-value mới nếu key 'phone' chưa tồn tại
  user1.addAll({ // Thêm nhiều cặp key-value mới vào Map
    'email': 'luc@gmail.com',
    'phone': '0123456789'
  });
  print(user);
  print(user1);

  // Xóa cặp key-value khỏi Map
  user.remove('address'); // Xóa theo key 'address'
  user.removeWhere((key, value) => value == null); // Xóa theo điều kiện (xóa các cặp có giá trị là null)
  user.clear(); // Xóa tất cả các cặp key-value khỏi Map
  print("User sau khi xóa: $user");

  // Truy cập
  print(user['name']); // Truy cập giá trị theo key 'name'
  print(user.length); // Lấy số lượng (độ dài) cặp key-value trong Map

  // Lấy value an toàn với giá trị mặc định nếu key không tồn tại
  String phone = user['phone'] ?? 'Chưa có số điện thoại';
  print("Số điện thoại: $phone");

  // Kiểm tra
  print(user1.isEmpty); // Kiểm tra Map có rỗng không
  print(user1.isNotEmpty); // Kiểm tra Map có không rỗng
  print(user1.containsKey('name')); // Kiểm tra Map có chứa key 'name' không
  print(user1.containsValue('An')); // Kiểm tra Map có chứa value 'An' không  
  print(user1.entries); // Lấy tất cả các cặp key-value trong Map dưới dạng iterable

  // Duyệt Map:
  // Duyệt theo key-value
  user1.forEach((key, value) {
    print("Key: $key, Value: $value");
  });

  // Duyệt theo entry
  for (var entry in user1.entries) {
    print("Key: ${entry.key}, Value: ${entry.value}");
  }

  // Biến đổi
  // Map key thành chữ hoa
  var upperMap = user1.map((key, value) => MapEntry(key.toUpperCase(), value)); // Chuyển key thành chữ in hoa
  print("Map sau khi chuyển key thành chữ in hoa: $upperMap");

  // Lọc Map
  var filteredMap = user1.entries.where((entry) => entry.value is int && entry.value > 10); // Lọc các cặp có giá trị là số nguyên lớn hơn 10
  print("Map sau khi lọc: $filteredMap");

  // VÍ DỤ THƯC TẾ
  // Giỏ hàng mua sắm
  Map<String, int> cart = {
    'product1': 2, // productID: quantity
    'product2': 1,
    'product3': 5
  };

  // Thêm sản phẩm vào giỏ
  void addToCart(String productID){
    cart.update(productID, (quantity) => quantity + 1, ifAbsent: () => 1);
  }

  // Lưu cài đặt ứng dụng
  Map<String, dynamic> appSettings = {
    'theme': 'dark',
    'notifications': true,
    'fontSize': 14
  };

  // Cập nhật cài đặt
  void updateSetting(String key, dynamic value){
    appSettings[key] = value;
  }

  // Cache dữ liệu tạm thời
  Map<String, dynamic> cache = {};
  void cacheData(String key, dynamic data){ // Lưu dữ liệu vào cache
    cache[key] = data;
  }
  String getData(String key){ // Lấy dữ liệu từ cache
    return cache[key] ?? 'No data';
  }

  // Quản lý trạng thái form
  Map<String, dynamic> formErrors = {}; // Lưu trữ lỗi của các trường trong form
  void setError(String field, String errorMessage){ // Đặt lỗi cho một trường cụ thể
    formErrors[field] = errorMessage;
  }

  void clearError(String field){ // Xóa lỗi của một trường cụ thể
    formErrors.remove(field);
  }

  bool hasErrors(){ // Kiểm tra xem có lỗi nào không
    return formErrors.isNotEmpty;
  }
}
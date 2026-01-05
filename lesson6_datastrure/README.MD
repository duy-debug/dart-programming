# Lesson 6: Cấu Trúc Dữ Liệu (Collections)

## Giới thiệu
Collections (bộ sưu tập) là các cấu trúc dữ liệu cho phép lưu trữ nhiều giá trị trong một biến duy nhất. Dart cung cấp ba loại collection chính: List, Set, và Map.

## 1. List - Danh Sách

List là tập hợp các phần tử được sắp xếp theo thứ tự, có thể chứa các phần tử trùng lặp.

### Đặc điểm List
- Các phần tử có thứ tự (ordered)
- Truy cập qua index (bắt đầu từ 0)
- Cho phép phần tử trùng lặp
- Kích thước có thể thay đổi (dynamic)

### Tạo List

```dart
// Cách 1: Literal syntax
var numbers = [1, 2, 3, 4, 5];
List<String> fruits = ['Apple', 'Banana', 'Orange'];

// Cách 2: List.from()
var list2 = List.from(['Dart', 'Flutter', 'Dart']);

// Cách 3:List.filled() - kích thước cố định
var list3 = List<int>.filled(5, 0); // 5 phần tử, giá trị 0

// Cách 4: List.empty() - danh sách rỗng
var emptyList = List.empty(growable: true);

// Cách 5: List.generate()
var generated = List.generate(5, (index) => index * 2);
// [0, 2, 4, 6, 8]
```

### Truy cập phần tử

```dart
var list = [10, 20, 30, 40, 50];

print(list[0]);         // 10 - Phần tử đầu tiên
print(list[2]);         // 30 - Phần tử thứ 3
print(list.first);      // 10 - Phần tử đầu
print(list.last);       // 50 - Phần tử cuối
print(list.length);     // 5 - Độ dài
```

### Thêm phần tử

```dart
var list = [1, 2, 3];

list.add(4);                    // [1, 2, 3, 4]
list.addAll([5, 6]);            // [1, 2, 3, 4, 5, 6]
list.insert(0, 0);              // [0, 1, 2, 3, 4, 5, 6]
list.insertAll(1, [-1, -2]);    // [0, -1, -2, 1, 2, 3, 4, 5, 6]
```

### Xóa phần tử

```dart
var list = [1, 2, 3, 4, 5];

list.remove(3);                     // [1, 2, 4, 5] - xóa giá trị 3
list.removeAt(0);                   // [2, 4, 5] - xóa tại index 0
list.removeLast();                  // [2, 4] - xóa cuối
list.removeWhere((e) => e % 2 == 0); // [] - xóa số chẵn
list.clear();                       // [] - xóa tất cả
```

### Các phương thức hữu ích

```dart
var list = [3, 1, 4, 1, 5, 9, 2, 6];

// Kiểm tra
list.isEmpty;                   // false
list.isNotEmpty;                // true
list.contains(5);               // true
list.indexOf(1);                // 1 - index đầu tiên
list.lastIndexOf(1);            // 3 - index cuối cùng

// Sắp xếp
list.sort();                    // [1, 1, 2, 3, 4, 5, 6, 9]
list.sort((a, b) => b.compareTo(a)); // Giảm dần
var reversed = list.reversed;   // Đảo ngược

// Cắt và nối
var subList = list.sublist(1, 4);    // Lấy từ index 1-3
var joined = list.join(', ');        // "9,6,5,4,3,2,1,1"

// Duyệt
list.forEach((element) {
  print(element);
});

for (var item in list) {
  print(item);
}
```

### Higher-order functions

```dart
var numbers = [1, 2, 3, 4, 5];

// map - biến đổi từng phần tử
var doubled = numbers.map((n) => n * 2).toList();
// [2, 4, 6, 8, 10]

// where - lọc phần tử
var evens = numbers.where((n) => n % 2 == 0).toList();
// [2, 4]

// reduce - gộp thành một giá trị
var sum = numbers.reduce((a, b) => a + b);
// 15

// any - có ít nhất một phần tử thỏa mãn
bool hasEven = numbers.any((n) => n % 2 == 0);
// true

// every - tất cả phần tử thỏa mãn
bool allPositive = numbers.every((n) => n > 0);
// true
```

## 2. Set - Tập Hợp

Set là tập hợp các phần tử không có thứ tự và không chứa phần tử trùng lặp.

### Đặc điểm Set
- Không có thứ tự cụ thể
- Không chứa phần tử trùng lặp
- Truy cập nhanh để kiểm tra sự tồn tại

### Tạo Set

```dart
// Cách 1: Literal syntax
var numbers = {1, 2, 3, 4, 5};
Set<String> names = {'Alice', 'Bob', 'Charlie'};

// Cách 2: Set.from()
var set2 = Set.from([1, 2, 2, 3]); // {1, 2, 3}

// Cách 3: Set()
var emptySet = <int>{};
```

### Thao tác với Set

```dart
var set = {1, 2, 3};

// Thêm
set.add(4);              // {1, 2, 3, 4}
set.add(2);              // {1, 2, 3, 4} - không thêm vì đã  có
set.addAll({5, 6});      // {1, 2, 3, 4, 5, 6}

// Xóa
set.remove(3);           // {1, 2, 4, 5, 6}
set.removeAll({1, 2});   // {4, 5, 6}
set.clear();             // {}

// Kiểm tra
set.contains(5);         // true/false
set.isEmpty;             
set.length;
```

### Các phép toán tập hợp

```dart
var a = {1, 2, 3, 4};
var b = {3, 4, 5, 6};

// Hợp (Union)
var union = a.union(b);           // {1, 2, 3, 4, 5, 6}

// Giao (Intersection)
var intersection = a.intersection(b);  // {3, 4}

// Hiệu (Difference)
var difference = a.difference(b);      // {1, 2}
```

## 3. Map - Ánh Xạ

Map là tập hợp các cặp key-value (khóa-giá trị).

### Đặc điểm Map
- Lưu trữ theo cặp key-value
- Key không được trùng lặp
- Truy cập giá trị thông qua key

### Tạo Map

```dart
// Cách 1: Literal syntax
var person = {
  'name': 'Duy',
  'age': 21,
  'isStudent': true
};

// Cách 2: Map()
Map<String, int> scores = Map();
scores['Math'] = 90;
scores['Physics'] = 85;

// Cách 3: Map.from()
var map2 = Map.from({'a': 1, 'b': 2});
```

### Truy cập và thao tác

```dart
var person = {'name': 'Duy', 'age': 21};

// Truy cập
print(person['name']);       // 'Duy'
print(person['city']);       // null (không tồn tại)

// Thêm/sửa
person['city'] = 'Hanoi';    // Thêm mới
person['age'] = 22;          // Sửa

// Xóa
person.remove('city');       // Xóa theo key
person.clear();              // Xóa tất cả

// Kiểm tra
person.containsKey('name');  // true
person.containsValue(21);    // true
person.isEmpty;
person.length;
```

### Duyệt Map

```dart
var scores = {'Math': 90, 'Physics': 85, 'Chemistry': 88};

// Duyệt qua entries
scores.forEach((key, value) {
  print('$key: $value');
});

// Duyệt qua keys
for (var key in scores.keys) {
  print('$key: ${scores[key]}');
}

// Duyệt qua values
for (var value in scores.values) {
  print(value);
}

// Duyệt qua entries
for (var entry in scores.entries) {
  print('${entry.key}: ${entry.value}');
}
```

## Spread Operator (...)

```dart
var list1 = [1, 2, 3];
var list2 = [0, ...list1, 4]; // [0, 1, 2, 3, 4]

var set1 = {1, 2};
var set2 = {...set1, 3, 4};  // {1, 2, 3, 4}

var map1 = {'a': 1};
var map2 = {...map1, 'b': 2}; // {'a': 1, 'b': 2}
```

## Collection If và Collection For

```dart
// Collection if
var includeZero = true;
var numbers = [
  if (includeZero) 0,
  1, 2, 3
]; // [0, 1, 2, 3]

// Collection for
var multiplied = [
  for (var i in [1, 2, 3]) i * 2
]; // [2, 4, 6]
```

## Best Practices

1. Sử dụng List khi cần thứ tự và cho phép trùng lặp
2. Sử dụng Set khi cần đảm bảo không trùng lặp
3. Sử dụng Map khi cần lưu trữ theo key-value
4. Ưu tiên literal syntax khi tạo collections
5. Sử dụng type annotations cho code rõ ràng
6. Tránh sửa đổi collection trong khi đang duyệt

## Tài liệu tham khảo

1. Dart Official - Collections: https://dart.dev/guides/libraries/library-tour#collections
2. Dart List class: https://api.dart.dev/stable/dart-core/List-class.html
3. Dart Set class: https://api.dart.dev/stable/dart-core/Set-class.html
4. Dart Map class: https://api.dart.dev/stable/dart-core/Map-class.html
5. Dart Collections codelab: https://dart.dev/codelabs/iterables

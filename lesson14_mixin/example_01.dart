/*
=== MIXIN TRONG DART ===
Mixin là gì?
- Mixin là một lớp đặc biệt chứa các phương thức và thuộc tính
- Dùng để "gắn thêm" tính năng vào các class khác
- KHÔNG thể tạo object trực tiếp từ mixin
- Sử dụng từ khóa "with" để thêm mixin vào class
Tại sao dùng Mixin?
- Tái sử dụng code hiệu quả
- Tránh lặp code
- Thêm nhiều tính năng vào 1 class mà không cần kế thừa nhiều class
*/

// 1. MIXIN CƠ BẢN - Chứa các tính năng về âm thanh
mixin CanPlaySound {
  // Thuộc tính của mixin
  int? volume;
  // Phương thức phát âm thanh
  void playSound() {
    print("Đang phát âm thanh với âm lượng: ${volume ?? 50}");
  }
  // Phương thức tắt âm thanh
  void muteSound() {
    print("Đã tắt tiếng");
  }
}
// 2. MIXIN THỨ HAI - Chứa các tính năng về chuyển động
mixin CanMove {
  // Thuộc tính tốc độ
  double speed = 0;
  // Phương thức di chuyển
  void move(String direction) {
    print("🏃 Đang di chuyển về hướng $direction với tốc độ $speed km/h");
  }
  // Phương thức dừng lại
  void stop() {
    speed = 0.0;
    print("Đã dừng lại");
  }
}

// 3. MIXIN THỨ BA - Chứa các tính năng về hiển thị
mixin CanDisplay {
  // Phương thức hiển thị thông tin
  void showInfo(String info) {
    print("Thông tin: $info");
  }
  
  // Phương thức hiển thị cảnh báo
  void showWarning(String warning) {
    print("Cảnh báo: $warning");
  }
}
class Animal {
  // Thuộc tính cơ bản
  String name;
  int age;
  // Constructor
  Animal(this.name, this.age);
  // Phương thức cơ bản
  void introduce() {
    print("\n👋 Xin chào! Tôi là $name, $age tuổi");
  }
}
// ============================================
// 5. CLASS KẾ THỪA VÀ SỬ DỤNG NHIỀU MIXIN
// ============================================
// Class Dog kế thừa Animal và sử dụng 3 mixin
class Dog extends Animal with CanPlaySound, CanMove, CanDisplay {
  // Thuộc tính riêng của Dog
  String breed; // Giống chó
  // Constructor
  Dog(String name, int age, this.breed) : super(name, age);
  
  // Phương thức riêng của Dog
  void bark() {
    print("$name đang sủa: Gâu gâu!");
    // Sử dụng phương thức từ mixin CanPlaySound
    playSound();
  }
  
  // Override phương thức từ class cha
  @override
  void introduce() {
    super.introduce(); // Gọi phương thức từ class cha
    print("Giống: $breed");
    // Sử dụng phương thức từ mixin CanDisplay
    showInfo("Tôi là một chú chó thông minh!");
  }
}

void main(){
  Dog myDog = Dog("Bobby", 3, "Golden Retriever");
  myDog.introduce();
}
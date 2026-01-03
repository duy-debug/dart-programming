/*
Dart là một ngôn ngữ lập trình hướng đối tượng, nơi mọi thứ đều là đối tượng và các đối tượng này được tạo ra từ các lớp (class).

Mỗi đối tượng trong Dart có thể có cá thuộc tính (biến) và phương thức (hàm).
Thuộc tính lưu trữ dữ liệu và phương thức thực hiện các hành động.

Sử dụng dấu chasm (.) để tham chiếu đến một thuộc tính hoặc phương thức.

*/
import 'dart:math';
class Point {
    double x,y;    Point(this.x, this.y); // Constructor cùng tên Class
    double distanceTo(Point other){
        var dx = x - other.x;
        var dy = y - other.y;
        return sqrt(pow(dx,2) + pow(dy,2));
    }
}

class Point1 {
    double? x; // Thuộc tính instance x, mặc định là null
    double z = 0; // Thuộc tính instance z, mặc định là 0
}


double x_ = 1.5;
class Point2 {
    double? x = x_; // Có thể truy cập khai báo không phụ thuộc vào this

    // double? y = this.x => Error
    double? y;
    late double? z = this.x; 
    Point2(this.x, this.y, this.z); // Constructor cùng tên Class
}
/*
    Phương thức getters, setter
    Trong Dart, getters và setters là các phương thức đặc biệt cung cấp quyền truy cập đọc và ghi vào các thuộc tính của một đối tượng. Ta có thể thêm các thuộc tính bằng cách triển khai getters và setters thông qua các từ khóa get và set.
*/

class Rectangle {
    double left, top, width, height;
    late double _z; // biến private

    Rectangle(this.left, this.top,this.width, this.height);
    double get z => _z;
    set z(double value) => _z = value;

    @override
    String toString() {
        return left.toString() + ", " + top.toString() + ", " + width.toString() + ", " + height.toString();
    }

    @override
  bool operator ==(Object other) {
    if(identical(this, other)) return true;
    if(other is! Rectangle) return false;

    return left == other.left && 
    top == other.top &&
    width == other.top &&
    height == other.height;
  }
}

/*
Thuộc tính và phương thức static
Trong Dart, thuộc tính và phương thức tĩnh (static) được sử dụng để chia sẽ dữ liệu và chức năng giữa tất cả các đối tượng của một lớp. Điều này có nghĩa là ta không cần phải tạo ra một đối tượng để truy cập vào các thuộc tính hoặc phương thức này.
*/
class MyMath {
    static const double PI = 3.14;
    static double sqr(double x){
        return x * x;
    }
}
void main(){
    Point p1 = Point(0,0);
    var p2 = Point(3,5);
    
    double d = p1.distanceTo(p2);
    print(d.toStringAsFixed(3));

    Point1 p2_1 = Point1();
    print(p2_1.x);

    print(MyMath.PI);
    print(MyMath.sqr(5));

    Rectangle r = Rectangle(0,0,15,10);
    r.z = 100;
    print(r._z);
    print(r.toString());

    Rectangle r2 = Rectangle(1,0,15,10);
    print(r == r2);
}
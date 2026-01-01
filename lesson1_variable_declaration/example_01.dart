void main(){
    /*
    Cách khai báo biến trong Dart
    - Sử dụng từ khóa var để tự động suy luận kiểu dữ liệu
    - Khai báo kiểu dữ liệu cụ thể: String, int, double, bool
    - Khai báo bằng object để có thể chứa mọi kiểu dữ liệu
     */
    /*
    Nếu tuổi lớn hơn hoặc bằng 18 thì in ra lời chào với tên đã khai báo
    */
    /// Ghi chú documents
    String name = "Duy";
    int age = 21;
    if(age >= 18){   
        print("Hello $name"); 
    }
    // Tự suy luận kiểu dữ liệu
    var fullName = "Trần Mai Ngọc Duy"; // tự động suy luận kiểu dữ liệu là String
    var height = 1.75; // tự động suy luận kiểu dữ liệu là double
    
    // Khai báo kiểu dữ liệu cụ thể
    int weight = 65;

    // Khai báo bằng object
    Object tenNguoiDung =  "Nguyễn Văn A"; // có thể chứa mọi kiểu dữ liệu
    


    //String ten;
    //ten = null;
    String? ten;
    ten = null;
    ten = 'Duy';

    // Biến final
    final name1 = 'Duy';
    // name = 'Ngoc';  Lỗi vì biến final chỉ gán giá trị một lần duy nhất

    final int age1; // Nó sẽ được gán giá trị sau
    age1 = 3;

    // Biến const
    const pi = 3.14;
    // const int max; lỗi vì khi khai báo phảu gán giá trị ngay lập tức
    moTa2 = 'Tran Mai Ngoc Duy';
    print(moTa2);

}
String moTa="abc";
String? moTa1;
// Khai báo theo kiểu lazy Initialization
late String moTa2; // Biến toàn cục cũng có thể khai báo kiểu lazy Initialization
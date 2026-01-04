/*
Bài tập 2:  - Khai báo lớp SinhVien bao gồm các thuộc tính: 
+ id, ten: bắt buộc. 
+ ngaySinh, que_Quan: Không bắt buộc - Yêu cầu:  
1. Viết hàm khởi tạo SinhVien cho các thuộc tính đã khai báo (Sử dụng named 
parameter). 
2. Ghi đè hàm toString sẵn có để trả về thông tin của một sinh viên. 
3. Viết lớp QL_SinhVien để quản lý một danh sách sinh viên với các phương 
thức add, edit, delete với đối số là một SinhVien.
*/
import 'dart:io';

// Class đại diện cho đối tượng Sinh Viên
class SinhVien{
    String id, ten;
    DateTime? ngaySinh;
    String? queQuan;
    
    // Hàm tạo (Constructor) sử dụng named parameters
    SinhVien({required this.id, required this.ten, this.ngaySinh, this.queQuan});
    
    // Ghi đè phương thức toString để hiển thị thông tin, xử lý null bằng ??
    @override
    String toString() {
        return 'SinhVien{id: $id, ten: $ten, ngaySinh: ${ngaySinh ?? "Chưa có"}, queQuan: ${queQuan ?? "Chưa có"}}';
    }
}

// Class quản lý chức năng: thêm, sửa, xóa
class QuanLySinhVien{
    List<SinhVien> _danhSachSinhVien = []; // Biến private để đóng gói dữ liệu
    
    // Getter để truy cập danh sách an toàn từ bên ngoài
    List<SinhVien> get danhSach => _danhSachSinhVien;

    void add(SinhVien sv){
        _danhSachSinhVien.add(sv);
    }

    void edit(SinhVien sv){
        // Tìm vị trí sinh viên cần sửa bằng ID
        int index = _danhSachSinhVien.indexWhere((element) => element.id == sv.id);
        if (index != -1) {
            _danhSachSinhVien[index] = sv;
        }
    }
    void delete(SinhVien sv){
        // Xóa sinh viên có ID trùng khớp
        _danhSachSinhVien.removeWhere((element) => element.id == sv.id);
    }
}
void main(){
    var ql = QuanLySinhVien();
    int n = 0;
    
    // Yêu cầu nhập số lượng sinh viên khác 0
    do {
      stdout.write("Nhap so luong sinh vien: ");
      n = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
    } while (n == 0);

    for(int i = 0; i < n; i++){
        print("Nhap thong tin sinh viên thứ ${i+1}");
        stdout.write("Nhap id: ");
        String id = stdin.readLineSync() ?? '';
        stdout.write("Nhap ten: ");
        String ten = stdin.readLineSync() ?? '';
        stdout.write("Nhap ngay sinh (yyyy-MM-dd): ");
        String ngaySinh = stdin.readLineSync() ?? '';
        stdout.write("Nhap que quan: ");
        String queQuan = stdin.readLineSync() ?? '';
        
        // Logic quan trọng: Chuyển chuỗi rỗng thành null để hiển thị "Chưa có"
        ql.add(SinhVien(id: id, ten: ten, ngaySinh: DateTime.tryParse(ngaySinh), queQuan: queQuan.isEmpty ? null : queQuan));
    }
    print("\nDanh sach sinh vien: \n");
    ql.danhSach.forEach((sv){
        print(sv);
    });
}
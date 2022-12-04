class LopHocPhanModel {
  String? hinhNen;
  String? maLhp;
  String? tenLhp;
  int? soluongSV;
  LopHocPhanModel({this.hinhNen, this.maLhp, this.tenLhp, this.soluongSV});
}

List<LopHocPhanModel> ls = [
  LopHocPhanModel(
      hinhNen: "assets/images/p1.jpg",
      maLhp: "TIN3142",
      tenLhp: "[2021-2022.2] - Thực tập viết niên luận - Nhóm 11",
      soluongSV: 35),
  LopHocPhanModel(
      hinhNen: "assets/images/p2.jpg",
      maLhp: "TIN3133",
      tenLhp: "[2021-2022.2] - Đồ họa máy tính - Nhóm 2",
      soluongSV: 40),
  LopHocPhanModel(
      hinhNen: "assets/images/p3.jpg",
      maLhp: "TIN3113",
      tenLhp: "[2021-2022.2] - Nhập môn trí tuệ nhân tạo - Nhóm 1",
      soluongSV: 35),
  LopHocPhanModel(
      hinhNen: "assets/images/p4.jpg",
      maLhp: "TIN4483",
      tenLhp: "[2021-2022.2] - Xây dựng ứng dụng với .NET Framework",
      soluongSV: 35),
];

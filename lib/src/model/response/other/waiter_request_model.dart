/// Garson istek listesi
class WaiterRequestModel {
  WaiterRequestModel(
      {this.waiterSubjectCode, this.waiterSubjectName, this.status = false, this.imageUrl});

  String? waiterSubjectCode;
  String? waiterSubjectName;
  bool status; // chBox status u için kullanılmakta
  String? imageUrl;

  factory WaiterRequestModel.fromJson(Map<String, dynamic> json) => WaiterRequestModel(
        waiterSubjectCode: json["waiter_subject_code"],
        waiterSubjectName: json["waiter_subject_name"],
        imageUrl: json["image_url"],
      );
}

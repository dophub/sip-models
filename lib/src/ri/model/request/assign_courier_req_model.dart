class AssignCourierReqModel {
  List<int>? orderId;
  int? personnelId;

  AssignCourierReqModel({this.orderId, this.personnelId});

  AssignCourierReqModel.fromJson(Map<String, dynamic> json) {
    orderId = json['order_id'].cast<int>();
    personnelId = json['personnel_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['order_id'] = orderId;
    data['personnel_id'] = personnelId;
    return data;
  }
}
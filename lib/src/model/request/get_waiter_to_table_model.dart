
/// GetWaiterScreen de masaya garson çağırma enpoint de kullanılmakta
class GetWaiterToTableModel {
  GetWaiterToTableModel({
    this.actionType,
    this.tableId,
  });

  List<String>? actionType;
  String? tableId;

  Map<String, dynamic> toJson() => {
        "action_type": List<String>.from(actionType!.map((x) => x)),
        "table_id": tableId,
      };
}

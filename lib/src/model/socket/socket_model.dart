import 'socket_order_data_model.dart';

class SocketModel {
  SocketModel({
    this.type,
    this.data,
  });

  String? type;
  SocketOrderDataModel? data;

  factory SocketModel.fromJson(Map<String, dynamic> json) => SocketModel(
        type: json["type"],
        data: SocketOrderDataModel.fromJson(json["data"]),
      );
}

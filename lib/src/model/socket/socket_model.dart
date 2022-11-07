import 'order_socket_data_model.dart';

class SocketModel {
  SocketModel({
    this.type,
    this.data,
  });

  String? type;
  OrderSocketDataModel? data;

  factory SocketModel.fromJson(Map<String, dynamic> json) => SocketModel(
        type: json["type"],
        data: OrderSocketDataModel.fromJson(json["data"]),
      );
}

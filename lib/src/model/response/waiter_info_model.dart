import 'package:sip_models/response.dart';

class WaiterInfoModel {
  WaiterInfoModel({
    this.fullName,
    this.profilePhoto,
  });

  String? fullName;
  ImagesModel? profilePhoto;

  factory WaiterInfoModel.fromJson(Map<String, dynamic> json) =>
      WaiterInfoModel(
        fullName: json["full_name"],
        profilePhoto: json["profile_photo"] == null
            ? ImagesModel()
            : ImagesModel.fromJson(json["profile_photo"]),
      );
}

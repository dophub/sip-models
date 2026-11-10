import 'package:background_json_parser/background_json_parser.dart';

class CurrentUserModel extends IBaseModel<CurrentUserModel> {
  int? id;
  String? name;
  String? email;
  String? mobilePhone;
  String? ssoId;
  int? brandId;
  String? brandName;
  int? dealerId;
  String? dealerName;
  CurrentUserImageModel? profilePhoto;
  List<String>? roles;
  CurrentUserOperationRoleModel? operationRole;
  List<CurrentUserPermissionModel>? permissions;

  CurrentUserModel({
    this.id,
    this.name,
    this.email,
    this.mobilePhone,
    this.ssoId,
    this.brandId,
    this.brandName,
    this.dealerId,
    this.dealerName,
    this.profilePhoto,
    this.roles,
    this.operationRole,
    this.permissions,
  });

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['email'] = email;
    data['mobile_phone'] = mobilePhone;
    data['sso_id'] = ssoId;
    data['brand_id'] = brandId;
    data['brand_name'] = brandName;
    data['dealer_id'] = dealerId;
    data['dealer_name'] = dealerName;
    data['profile_photo'] = profilePhoto?.toJson();
    data['roles'] = roles;
    data["operation_role"] = operationRole?.toJson();
    data["permissions"] = permissions == null ? [] : List<dynamic>.from(permissions!.map((x) => x.toJson()));
    return data;
  }

  @override
  CurrentUserModel fromJson(Map json) => CurrentUserModel(
    id: json['id'],
    name: json['name'],
    email: json['email'],
    mobilePhone: json['mobile_phone'],
    ssoId: json['sso_id'],
    brandId: json['brand_id'],
    brandName: json['brand_name'],
    dealerId: json['dealer_id'],
    dealerName: json['dealer_name'],
    profilePhoto: json['profile_photo'] != null ? CurrentUserImageModel.fromJson(json['profile_photo']) : null,
    roles: json['roles'].cast<String>(),
    operationRole: json["operation_role"] == null
        ? null
        : CurrentUserOperationRoleModel.fromJson(json["operation_role"]),
    permissions: json["permissions"] == null
        ? []
        : List<CurrentUserPermissionModel>.from(
            json["permissions"]!.map((x) => CurrentUserPermissionModel.fromJson(x)),
          ),
  );

  bool hasSomeRoleAndPermission(Object other) {
    if (identical(this, other)) return true;
    if (other is! CurrentUserModel) return false;
    if (operationRole != other.operationRole) return false;

    final currentPermissions = permissions ?? <CurrentUserPermissionModel>[];

    final otherPermissions = List<CurrentUserPermissionModel>.of(other.permissions ?? <CurrentUserPermissionModel>[]);

    if (currentPermissions.length != otherPermissions.length) return false;

    for (final permission in currentPermissions) {
      final index = otherPermissions.indexOf(permission);

      if (index == -1) return false;

      otherPermissions.removeAt(index);
    }

    return true;
  }
}

class CurrentUserImageModel {
  String? imageUrl;

  CurrentUserImageModel({this.imageUrl});

  CurrentUserImageModel.fromJson(Map<String, dynamic> json) {
    imageUrl = json['image_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['image_url'] = imageUrl;
    return data;
  }
}

class CurrentUserOperationRoleModel {
  String? roleCode;
  String? roleName;
  int? roleWeight;

  CurrentUserOperationRoleModel({this.roleCode, this.roleName, this.roleWeight});

  factory CurrentUserOperationRoleModel.fromJson(Map<String, dynamic> json) => CurrentUserOperationRoleModel(
    roleCode: json["role_code"],
    roleName: json["role_name"],
    roleWeight: json["role_weight"],
  );

  Map<String, dynamic> toJson() => {"role_code": roleCode, "role_name": roleName, "role_weight": roleWeight};

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CurrentUserOperationRoleModel &&
        roleCode == other.roleCode &&
        roleName == other.roleName &&
        roleWeight == other.roleWeight;
  }

  @override
  int get hashCode => Object.hash(roleCode, roleName, roleWeight);
}

class CurrentUserPermissionModel {
  String? id;
  String? code;
  String? name;
  String? groupId;
  String? groupName;
  String? description;

  CurrentUserPermissionModel({this.id, this.code, this.name, this.groupId, this.groupName, this.description});

  factory CurrentUserPermissionModel.fromJson(Map<String, dynamic> json) => CurrentUserPermissionModel(
    id: json["id"],
    code: json["code"],
    name: json["name"],
    groupId: json["group_id"],
    groupName: json["group_name"],
    description: json["description"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "code": code,
    "name": name,
    "group_id": groupId,
    "group_name": groupName,
    "description": description,
  };

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CurrentUserPermissionModel &&
        id == other.id &&
        code == other.code &&
        name == other.name &&
        groupId == other.groupId &&
        groupName == other.groupName &&
        description == other.description;
  }

  @override
  int get hashCode => Object.hash(id, code, name, groupId, groupName, description);
}

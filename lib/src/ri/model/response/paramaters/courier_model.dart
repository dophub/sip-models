class CourierModel {
  int? id;
  String? name;
  String? surname;

  CourierModel({this.id, this.name, this.surname});

  factory CourierModel.fromJson(Map<String, dynamic> json) => CourierModel(
        id: json['id'] as int?,
        name: json['name'] as String?,
        surname: json['surname'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'surname': surname,
      };
}

class CourierInfo {
  int? id;
  String? name;

  CourierInfo({this.id, this.name});

  @override
  String toString() => 'CourierInfo(id: $id, name: $name)';

  factory CourierInfo.fromJson(Map<String, dynamic> json) => CourierInfo(
        id: json['id'] as int?,
        name: json['name'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
      };

  CourierInfo copyWith({
    int? id,
    String? name,
  }) {
    return CourierInfo(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode;
}

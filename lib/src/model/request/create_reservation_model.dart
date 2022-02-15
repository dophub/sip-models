class CreateReservationModel {
  CreateReservationModel({
    this.date,
    this.personCount,
    this.customerFullName,
    this.customerPhone,
    this.customerEmail,
    this.customerNote,
    this.fixMenu,
  });

  DateTime? date;
  int? personCount;
  String? customerFullName;
  String? customerPhone;
  String? customerEmail;
  String? customerNote;
  List<FixMenu>? fixMenu;

  Map<String, dynamic> toJson() => {
        "date": date?.toIso8601String(),
        "person_count": personCount,
        "customer_full_name": customerFullName,
        "customer_phone": customerPhone,
        "customer_email": customerEmail,
        "customer_note": customerNote,
        "fix_menu": fixMenu == null
            ? null
            : List<dynamic>.from(fixMenu!.map((x) => x.toJson())),
      };
}

class FixMenu {
  FixMenu({
    this.id,
    this.count,
  });

  int? id;
  int? count;

  Map<String, dynamic> toJson() => {
        "id": id,
        "count": count,
      };
}

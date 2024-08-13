class FastLoginModel {
  FastLoginModel({
    this.apiurl,
    this.sessionId,
  });

  String? apiurl;
  String? sessionId;

  FastLoginModel.fromJson(dynamic json) {
    apiurl = json['apiurl'];
    sessionId = json['sessionId'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['apiurl'] = apiurl;
    map['sessionId'] = sessionId;
    return map;
  }
}

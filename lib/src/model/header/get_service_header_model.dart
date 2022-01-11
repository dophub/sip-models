class GetServiceHeaderModel {
  GetServiceHeaderModel({
    required this.sessionId,
    required this.dealerId,
    required this.tableId,
  });

  String sessionId;
  String dealerId;
  String tableId;

  Map<String, String> toJson() => {
        "sessionid": sessionId,
        "dealerid": dealerId,
        "tableid": tableId,
      };
}

import 'dart:convert';

class EventLogModel {
  EventLogModel(
    this.eventCode,
  );

  String eventCode;
  Map<String, dynamic>? callbackParameters;

  Map<String, dynamic> toJson() => {
        "event_token": eventCode,
        "call_back_parameters":
            callbackParameters == null ? '' : json.encode(callbackParameters),
      };
}

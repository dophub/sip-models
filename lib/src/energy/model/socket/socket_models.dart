import 'package:background_json_parser/background_json_parser.dart';

import '../../../model/response/other/error_model.dart';

abstract class DEClientEvents {}

abstract class DEClientMethods {}

class DEBaseMessageModel extends IBaseModel<DEBaseMessageModel> {
  String? uniqueId;
  String? action;

  DEBaseMessageModel({this.uniqueId, this.action});

  @override
  DEBaseMessageModel fromJson(Map<String, dynamic> json) {
    return DEBaseMessageModel(
      uniqueId: json['UniqueId'],
      action: json['Action'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'UniqueId': uniqueId,
      'Action': action,
    };
  }
}

class DECallMessageModel<T extends IBaseModel<T>> extends DEBaseMessageModel {
  @override
  final String? action;
  final T? payload;

  DECallMessageModel({
    super.uniqueId,
    this.action,
    required this.payload,
  });

  @override
  fromJson(Map<String, dynamic> json) {
    return DECallMessageModel<T>(
      uniqueId: json['UniqueId'],
      action: json['Action'],
      payload: payload?.jsonParser(json['Payload']),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'UniqueId': uniqueId,
      'Action': action,
      'Payload': payload,
    };
  }
}

class DECallResponseModel<T extends IBaseModel<T>> extends DEBaseMessageModel {
  final T? payload;
  final ErrorModel? error;

  DECallResponseModel({
    super.uniqueId,
    required this.payload,
    this.error,
  });

  @override
  DECallResponseModel<T> fromJson(Map<String, dynamic> json) {
    return DECallResponseModel<T>(
      uniqueId: json['UniqueId'],
      payload: json['Payload'] == null ? null : payload?.fromJson(json['Payload']),
      error: json['Error'] == null ? null : ErrorModel().fromJson(json['Error']),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'UniqueId': uniqueId,
      'Payload': payload,
      'Error': error?.convertToJson(),
    };
  }
}

/// Payload Model
class RegisterChargePointConnectorReqModel extends IBaseModel<RegisterChargePointConnectorReqModel> {
  final int? connectorId;
  final String? chargePointId;

  RegisterChargePointConnectorReqModel({
    this.connectorId,
    this.chargePointId,
  });

  @override
  RegisterChargePointConnectorReqModel fromJson(Map<String, dynamic> json) {
    return RegisterChargePointConnectorReqModel(
      connectorId: json['connectorId'],
      chargePointId: json['chargePointId'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'connectorId': connectorId,
      'chargePointId': chargePointId,
    };
  }
}

/// Payload Model
class RegisterChargePointConnectorResModel extends IBaseModel<RegisterChargePointConnectorResModel> {
  final String? status;
  final int? connectorId;
  final String? chargePointId;

  RegisterChargePointConnectorResModel({
    this.status,
    this.connectorId,
    this.chargePointId,
  });

  @override
  RegisterChargePointConnectorResModel fromJson(Map<String, dynamic> json) {
    return RegisterChargePointConnectorResModel(
      connectorId: json['connectorId'],
      chargePointId: json['chargePointId'],
      status: json['status'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'connectorId': connectorId,
      'chargePointId': chargePointId,
      'status': status,
    };
  }
}

class StatusNotificationRequestModel extends IBaseModel<StatusNotificationRequestModel> {
  /// Required. The id of the connector for which the status is reported.
  /// Id '0' (zero) is used if the status is for the Charge Point main
  /// controller.
  final int? connectorId;

  /// Required. This contains the error code reported by the Charge Point. */    errorCode: ChargePointErrorCode

  /// Optional. Additional free format information related to the error. */
  final String? info;

  /// Required. This contains the current status of the Charge Point. */
  final String? status;

  /// Optional. The time for which the status is reported. If absent time
  /// of receipt of the message will be assumed.
  final String? timestamp;

  /// Optional. This identifies the vendor-specific implementation. */
  final String? vendorId;

  /// Optional. This contains the vendor-specific error code */
  final String? vendorErrorCode;

  StatusNotificationRequestModel({
    this.connectorId,
    this.info,
    this.status,
    this.timestamp,
    this.vendorId,
    this.vendorErrorCode,
  });

  @override
  StatusNotificationRequestModel fromJson(Map<String, dynamic> json) {
    return StatusNotificationRequestModel(
      connectorId: json['connectorId'],
      info: json['info'],
      status: json['status'],
      timestamp: json['timestamp'],
      vendorId: json['vendorId'],
      vendorErrorCode: json['vendorErrorCode'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'connectorId': connectorId,
      'info': info,
      'status': status,
      'timestamp': timestamp,
      'vendorId': vendorId,
      'vendorErrorCode': vendorErrorCode,
    };
  }
}

/// şarj başlatma modeli
class StartChargingRequestModel extends IBaseModel<StartChargingRequestModel> {
  final String? chargePointId;
  final int? connectorId;

  // final ChargingProfile chargingProfile;

  StartChargingRequestModel({
    this.chargePointId,
    this.connectorId,
  });

  @override
  StartChargingRequestModel fromJson(Map<String, dynamic> json) {
    return StartChargingRequestModel(
      chargePointId: json['chargePointId'],
      connectorId: json['connectorId'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'chargePointId': chargePointId,
      'connectorId': connectorId,
    };
  }
}

/// Şarj başlatıktan sonra dönen model
class StartStopChargingResponseModel extends IBaseModel<StartStopChargingResponseModel> {
  final String? status;

  StartStopChargingResponseModel({this.status});

  @override
  StartStopChargingResponseModel fromJson(Map<String, dynamic> json) {
    return StartStopChargingResponseModel(
      status: json['status'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {'status': status};
  }
}

/// şarj Durdurma modeli
class StopChargingRequestModel extends IBaseModel<StopChargingRequestModel> {
  final String? chargePointId;
  final int? transactionId;

  StopChargingRequestModel({
    this.chargePointId,
    this.transactionId,
  });

  @override
  StopChargingRequestModel fromJson(Map<String, dynamic> json) {
    return StopChargingRequestModel(
      chargePointId: json['chargePointId'],
      transactionId: json['transactionId'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'chargePointId': chargePointId,
      'transactionId': transactionId,
    };
  }
}

class MeterNotificationModel extends IBaseModel<MeterNotificationModel> {
  /// Required. This contains a number (>0) designating a connector of the Charge
  /// Point.‘0’ (zero) is used to designate the main powermeter.
  final int? connectorId;

  /// Optional. The transaction to which these meter samples are related. */
  final int? transactionId;

  /// Required. The sampled meter values with timestamps. */
  final List<MeterValueModel>? meterValue;

  MeterNotificationModel({this.meterValue, this.connectorId, this.transactionId});

  @override
  MeterNotificationModel fromJson(Map<String, dynamic> json) {
    return MeterNotificationModel(
      connectorId: json['connectorId'],
      transactionId: json['transactionId'],
      meterValue: json["meterValue"] == null
          ? []
          : List<MeterValueModel>.from(json["meterValue"].map((x) => MeterValueModel.fromJson(x))),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'connectorId': connectorId,
      'transactionId': transactionId,
      "meterValue": List<dynamic>.from(meterValue!.map((x) => x.toJson())),
    };
  }
}

class MeterValueModel {
  MeterValueModel({
    this.sampledValue,
    this.timestamp,
  });

  List<SampledValueModel>? sampledValue;
  String? timestamp;

  factory MeterValueModel.fromJson(Map<String, dynamic> json) => MeterValueModel(
    sampledValue: json["sampledValue"] == null
        ? []
        : List<SampledValueModel>.from(json["sampledValue"].map((x) => SampledValueModel.fromJson(x))),
    timestamp: json["timestamp"],
  );

  Map<String, dynamic> toJson() => {
    "sampledValue": List<dynamic>.from(sampledValue!.map((x) => x.toJson())),
    "timestamp": timestamp,
  };
}

class SampledValueModel {
  SampledValueModel({
    this.context,
    this.format,
    this.location,
    this.measurand,
    this.phase,
    this.unit,
    this.value,
  });

  String? context;
  String? format;
  String? location;
  String? measurand;
  String? phase;
  String? unit;
  String? value;

  factory SampledValueModel.fromJson(Map<String, dynamic> json) => SampledValueModel(
    context: json["context"],
    format: json["format"],
    location: json["location"],
    measurand: json["measurand"],
    phase: json["phase"],
    unit: json["unit"],
    value: json["value"],
  );

  Map<String, dynamic> toJson() => {
    "context": context,
    "format": format,
    "location": location,
    "measurand": measurand,
    "phase": phase,
    "unit": unit,
    "value": value,
  };
}

class StartChargingNotificationModel extends IBaseModel<StartChargingNotificationModel> {
  final int? connectorId;

  /// Required. This contains the identifier for which a transaction has to be started. */
  final String? idTag;

  /// Required. This contains the meter value in Wh for the connector at start of the transaction. */
  final int? meterStart;

  /// Optional. This contains the id of the reservation that terminates as a result of this transaction. */
  final int? reservationId;

  /// Required. This contains the date and time on which the transaction is started. */
  final String? timestamp;

  StartChargingNotificationModel({this.connectorId, this.idTag, this.meterStart, this.reservationId, this.timestamp});

  @override
  StartChargingNotificationModel fromJson(Map<String, dynamic> json) {
    return StartChargingNotificationModel(
      connectorId: json['connectorId'],
      idTag: json['idTag'],
      meterStart: json['meterStart'],
      reservationId: json['reservationId'],
      timestamp: json['timestamp'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'connectorId': connectorId,
      'idTag': idTag,
      'meterStart': meterStart,
      'reservationId': reservationId,
      'timestamp': timestamp,
    };
  }
}

class StopChargingNotificationModel extends IBaseModel<StopChargingNotificationModel> {
  /// Required. This contains the date and time on which the transaction is stopped. */
  final String? timestamp;

  /// Optional. This contains the identifier which requested to stop the charging. It is
  /// optional because a Charge Point may terminate charging without the presence
  /// of an idTag, e.g. in case of a reset. A Charge Point SHALL send the idTag if known.
  final String? idTag;

  /// Required. This contains the transaction-id as received by the StartTransaction.conf. */
  final int? transactionId;

  /// Optional. This contains the reason why the transaction was stopped. MAY only
  /// be omitted when the Reason is "Local".
  // reason?: Reason

  /// Optional. This contains transaction usage details relevant for billing purposes. */
  // transactionData?: MeterValue[]

  StopChargingNotificationModel({this.transactionId, this.idTag, this.timestamp});

  @override
  StopChargingNotificationModel fromJson(Map<String, dynamic> json) {
    return StopChargingNotificationModel(
      idTag: json['idTag'],
      timestamp: json['timestamp'],
      transactionId: json['transactionId'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'idTag': idTag,
      'timestamp': timestamp,
      'transactionId': transactionId,
    };
  }
}

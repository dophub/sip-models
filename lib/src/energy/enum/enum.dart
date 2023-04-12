/// Pointlerin statusları
enum ChargePointStatusEnum {
/*  When a Connector becomes available for a new user (Operative)*/
  Available,
/*    When a Connector becomes no longer available for a new user but there is no ongoing Transaction (yet). Typically a Connector
   is in preparing state when a user presents a tag, inserts a cable or a vehicle occupies the parking bay*/
  Preparing,
/*      When the contactor of a Connector closes, allowing the vehicle to charge
      (Operative)*/
  Charging,
/*When the EV is connected to the EVSE but the EVSE is not offering energy to the EV, e.g. due to a smart charging restriction,
local supply power constraints, or as the result of StartTransaction.conf indicating that charging is not allowed etc.*/
  SuspendedEVSE,
  // When the EV is connected to the EVSE and the EVSE is offering energy but the EV is not taking any energy.
  SuspendedEV,
  //When a Transaction has stopped at a Connector, but the Connector is not yet available for a new user, e.g. the cable has not
  //been removed or the vehicle has not left the parking bay Finishing, When a Connector becomes reserved as a result of a Reserve Now command*/
  Reserved,
  Finishing,
/*When a Connector becomes unavailable as the result of a Change Availability command or an event upon which the Charge
      Point transitions to unavailable at its discretion. Upon receipt of a Change Availability command, the status MAY change
      immediately or the change MAY be scheduled. When scheduled, the Status Notification shall be send when the availability
      change becomes effective*/
  Unavailable,
  /* When a Charge Point or connector has reported an error and is not available for energy delivery . (Inoperative). */
  Faulted,
}

enum SocketEventEnum {
  /// Connactor un dururmu değişti anlamına gelir
  StatusNotification,

  /// Şarj başladı
  StartTransaction,

  /// Şarj durduruldu
  StopTransaction,

  /// ölçüm
  MeterValues,
}

/// Charge et komutunu gönderdikten sonra gelen status
enum RemoteStartStopStatusEnum {
  /// Command will be executed.
  Accepted,

  /// Command will not be executed.
  Rejected,
}

/// Point (Şarj stasyonunda) te aksiyon almak için kullanılırı
enum ActionEventEnum {
  /// Socketten ilgili point ten  Bildirim almak için gönderilir
  RegisterChargePointConnectorStatus,

  /// RegisterChargePointConnectorStatus tersi
  UnRegisterChargePointConnectorStatus,

  /// İligili point te şarj başlatır
  StartCharging,

  /// İligili point te şarjı durdurur
  StopCharging,
}

enum AuthorizationStatusEnum {
  /// Identifier is allowed for charging.
  Accepted,

  ///Identifier has been blocked. Not allowed for charging.
  Blocked,

  ///Identifier has expired. Not allowed for charging.
  Expired,

  /// Identifier is unknown. Not allowed for charging.
  Invalid,

  /// Identifier is already involved in another transaction and multiple transactions are not allowed. (Only relevant for a StartTransaction.req.)
  ConcurrentTx
}

enum EnergyChargeDetailScreenStepEnum { init, register, started, stopped, charging }

enum PowerTypeEnum { DC, AC }

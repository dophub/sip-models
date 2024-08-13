/// İsimlendirilmiş Route larda Argumentleri Map değişkeni ile
/// verdiğimizde daha sonradan silme veya yanlışlık ile
/// değiştirilmeisni engellemek için yazıldı.

/// Screens Arguments

///[CourierDetailView] Screen Arguments
enum CourierDetailViewArguments { courierResponseModel, isDeliveredBool }

enum MenuScreenArguments { selectedTable, orderPoint, onChangeOrder, sessionId }

enum OrderDetailsViewArguments { selectedOrderId }

enum AssignToTableScreenArguments { qrCode, status }

enum QRAssignedScreenArguments { qrCode, info }

enum CarDetailScreenArguments { model }

/// Ekranların veya thread için yazdığımız fonk. lara Argument lerinin enumler ile veriyoruz.
/// Isimlendirilmiş Route larda Argumentleri Map değişkeni ile
/// verdiğimizde daha sonradan silme veya yanlışlık ile
/// değiştirilmesini enellemek için yazıldı.
///

/// Screens Arguments
enum ProductProfileScreenArguments { dealerId, orderItem, itemObject, currentModule }
enum MenuScreenArguments { menuId, focusActive }
enum CategoryScreenArguments { categoryId, focusActive }
enum DealerDetailScreenArguments { dealerModel, nearDealerDetailsModel }

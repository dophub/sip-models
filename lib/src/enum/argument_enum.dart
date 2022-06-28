/// Ekranların veya thread için yazdığımız fonk. lara Argument lerinin enumler ile veriyoruz.
/// Isimlendirilmiş Route larda Argumentleri Map değişkeni ile
/// verdiğimizde daha sonradan silme veya yanlışlık ile
/// değiştirilmesini enellemek için yazıldı.
///

/// Screens Arguments
enum ProductProfileScreenArguments { dealerId, orderItem, itemObject, currentModule }

enum MenuScreenArguments { menuId, focusActive }

enum CategoryScreenArguments { categoryId, focusActive }

enum DealerDetailScreenArguments { dealerModel }

enum DealerPaymentScreenArguments { payDeskAmount }

enum FixMenuScreenArguments { dealerId, selectedFixMenuList }

enum CampaignScreenArguments { campaignList, viewMode }

enum OtpVerificationScreenArguments { mode, userModel }

enum UserChooseAddressScreenArguments { canChangeAddress, addressList }

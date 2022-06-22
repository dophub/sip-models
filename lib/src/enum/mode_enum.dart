/// [ListMode] Ürün listelerinde kullanılmakta
/// [Line] Horizontal Liste
/// [Grid] Ikili Grid
enum ListMode { Line, Grid }

/// [RegisterScreenMode] Register ekranında kullanılmakta
/// [Update] Eski Kullanıcı Bilgiler Güncellenecek
/// [Insert] Yeni Kullanıcı Bilgiler Insert Edilecek
/// Google,Apple ..vs ile giriş yapıldığında
enum RegisterScreenMode { update, insert, sso }

/// [OtpVerificationScreenMode] Verification ekranında kullanılmakta
/// [register] Register de gönderilen OTP yi onaylamak için
/// [login] Login de gönderilen OTP yi onaylamak için
/// [sso] SSO de gönderilen OTP yi onaylamak için
enum OtpVerificationScreenMode { register, login, sso }

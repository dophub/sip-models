/// [ListMode] Ürün listelerinde kullanılmakta
/// [line] Horizontal Liste
/// [grid] Ikili Grid
enum ListMode { line, grid }

/// [RegisterScreenMode] Register ekranında kullanılmakta
/// [Update] Eski Kullanıcı Bilgiler Güncellenecek
/// [Insert] Yeni Kullanıcı Bilgiler Insert Edilecek
/// Google,Apple ..vs ile giriş yapıldığında
enum RegisterScreenMode { insert, sso }

/// [OtpVerificationScreenMode] Verification ekranında kullanılmakta
/// [register] Register de gönderilen OTP yi onaylamak için
/// [login] Login de gönderilen OTP yi onaylamak için
/// [sso] SSO de gönderilen OTP yi onaylamak için
enum OtpVerificationScreenMode { register, login, sso }

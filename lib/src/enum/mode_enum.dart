/// [ListMode] Ürün listelerinde kullanılmakta
/// [line] Horizontal Liste
/// [grid] Ikili Grid
enum ListMode { line, grid }

/// [RegisterScreenMode] Register ekranında kullanılmakta
/// [insert] Yeni Kullanıcı Bilgiler Insert Edilecek
/// [sso] Google,Apple ..vs ile giriş yapıldığında
/// [waitUser] kullanıcı kiosktan insert edilipte waitte olduğu zaman
enum RegisterScreenMode { insert, sso, waitUser }

/// [OtpVerificationScreenMode] Verification ekranında kullanılmakta
/// [register] Register de gönderilen OTP yi onaylamak için
/// [login] Login de gönderilen OTP yi onaylamak için
/// [sso] SSO de gönderilen OTP yi onaylamak için
enum OtpVerificationScreenMode { register, login, sso }

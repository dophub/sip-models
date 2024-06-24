/// local storage kulanılmakta
/// kayıt edilen bilgilerin keyleri
/// [Token] Kullanıcı token bilgileri.
/// [ListMode] Liste modu, Kullanıcının son kullandığı liste modu kayıt edilmekte, Değeri [mode.ListMode] olması gerek.
/// [paycellPosSerial] paycell pos terminellerin seri numarasını tutmak için kullanılmakta
enum CacheKey {
  userId,
  token,
  tempToken,
  listMode,
  sessionId,
  address,
  loggedIn,
  filter,
  languageCode,
  thePaycellPosIsMarched,
  userCode,
  workingMode,
}

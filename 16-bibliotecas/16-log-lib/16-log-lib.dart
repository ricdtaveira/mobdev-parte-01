// Biblioteca lib_log
// Funcionalidades de Log
//

library lib_log;

// Funçoes e Classes

debug(msg) => print("DEBUG: $msg");

warn(msg) => print("WARN: $msg");

info(msg) => print("INFO: $msg");

class Logger {
  log(msg) => print("LOG: $msg");
}

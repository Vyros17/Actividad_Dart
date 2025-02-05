import 'dart:io';
void clearConsole() {
  if (Platform.isWindows) {
    stdout.write('\x1B[2J\x1B[3J\x1B[H');
  } else if (Platform.isMacOS || Platform.isLinux) {
    stdout.write('\x1B[2J\x1B[H');
  }
}
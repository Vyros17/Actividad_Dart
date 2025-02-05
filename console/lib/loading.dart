import "dart:math";

void loading() {
  Random rn = Random();
  switch (rn.nextInt(3)+1) {
    case 1:
      print("🔥 Cargando Datos...🔥");
    case 2:
      print("❄️ Cargando Datos...❄️");
    case 3:
      print("🌨️ Cargando Datos...🌨️");
  }
}

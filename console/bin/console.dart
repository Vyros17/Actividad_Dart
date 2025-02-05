import 'package:console/stream.dart';
import 'package:console/clear_console.dart';
import 'package:console/weather_analizer.dart';
import 'package:console/loading.dart';

void describing(dynamic city) {
  print("* Ciudad: ${city['lugar']}");
  if (city['eventos'] == null || city['eventos']['dias'] == 0) {
    print("* Temperatura: ${city['Temperatura']} °C\n* Clima: ${city['clima']}");
  } else {
    if (city['eventos']['dias'] > 0) {
      print("¡ALERTA! ¡EVENTO METEOROLÓGICO EN CURSO!");
      switch (city['eventos']['evento']) {
        case "Lluvias torrenciales":
          print("🌨️ LLUVIAS TORRENCIALES 🌨️");
        case "Tormenta de nieve":
          print("❄️ TORMENTA DE NIEVE ❄️");
        case "Ola de Calor":
          print("🔥 OLA DE CALOR 🔥");
      }
      print("Días restantes del evento: ${city['eventos']['dias']}");
    }
  }
}


void main(List<String> arguments) async {
  print("*********************************************");
  print("*SISTEMA DE MONITOREO METEOROLÓGICO INICIADO*");
  print("*********************************************");
  loading();
  final weather = weatherStream();
  await for (var city in weather) {
    clearConsole();
    describing(city);
    weatherAnalizer(city);
    loading();
  }
}

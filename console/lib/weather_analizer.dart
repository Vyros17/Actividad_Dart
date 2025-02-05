import "dart:math";
void events(dynamic city) {
  Random rn = Random();
  if (city["eventos"] == null || (city["eventos"]["dias"] == 0)) {
    if (rn.nextInt(11) == 7) {
      if (city["clima"] == "frio") {
        city["eventos"] = {
          "dias": rn.nextInt(31),
          "evento": "Tormenta de nieve"
        };
      } else if (city["clima"] == "Caluroso") {
        city["eventos"] = {"dias": rn.nextInt(31), "evento": "Ola de Calor"};
      } else {
        city["eventos"] = {
          "dias": rn.nextInt(31),
          "evento": "Lluvias torrenciales"
        };
      }
    }
  } else if (city["eventos"]["dias"] > 0) {
    city["eventos"]["dias"]--;
  } else if (city["eventos"]["dias"] == 0) {
    city["eventos"]["evento"] == "";
  }
}

void weatherAnalizer(dynamic city) {
  Random rn = Random();
  int currentWeather = rn.nextInt(51);
  if (currentWeather > city["Temperatura"]) {
    city["clima"] = "Caluroso";
  } else if (currentWeather == city["Temperatura"]) {
    city["clima"] = "normal";
  } else {
    city["clima"] = " frio";
  }
  events(city);
  city["Temperatura"] = currentWeather;
}

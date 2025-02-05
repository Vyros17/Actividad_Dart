import "dart:math";
void events(dynamic city) {
  Random rn = Random();
  if (city["eventos"] == null || (city["eventos"]["dias"] == 0)) {
    city["eventos"]?["evento"] = "";
    if (rn.nextInt(11) == 7) {
      if (city["clima"].endsWith("frio")) {
        city["eventos"] = {
          "dias": rn.nextInt(31),
          "evento": "Tormenta de nieve"
        };
      } else if (city["clima"].endsWith("Caluroso")) {
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
  }
}

void weatherAnalizer(dynamic city) {
  Random rn = Random();
  int nextWeather = rn.nextInt(61);
  city["Temperatura"] = nextWeather;
  if (city["Temperatura"]>=40) {
    city["clima"] = "Muy Caluroso";
  } else if (city["Temperatura"]>=30 && city["Temperatura"]<40) {
    city["clima"] = "Caluroso";
  } else if (city["Temperatura"]>=20 && city["Temperatura"]<30){
    city["clima"] = "normal";
  } else if (city["Temperatura"]>=10 && city["Temperatura"]<20){
    city["clima"] = "frio";
  } else if (city["Temperatura"]<10){
    city["clima"] = "muy frio";
  }
  events(city);
}

import 'dart:math';

Map<String, dynamic> mapMaker() {
  Map<String, dynamic> map = {};
  map.addAll({
    "Valencia": {
      "lugar": "Valencia",
      "Temperatura": 40,
      "clima": "normal",
      "eventos": null
    }
  });
  map.addAll({
    "Caracas": {
      "lugar": "Caracas",
      "Temperatura": 20,
      "clima": "normal",
      "eventos": null
    }
  });
  map.addAll({
    "Taj Majal": {
      "lugar": "Taj Majal",
      "Temperatura": 50,
      "clima": "normal",
      "eventos": null
    }
  });
  map.addAll({
    "Oregon": {
      "lugar": "Oregon",
      "Temperatura": 30,
      "clima": "normal",
      "eventos": null
    }
  });
  map.addAll({
    "Chiclayork": {
      "lugar": "Chiclayork",
      "Temperatura": 90,
      "clima": "normal",
      "eventos": null
    }
  });
  map.addAll({
    "Barcelona": {
      "lugar": "Barcelona",
      "Temperatura": 40,
      "clima": "normal",
      "eventos": null
    }
  });
  map.addAll({
    "Oslo": {
      "lugar": "Oslo",
      "Temperatura": 10,
      "clima": "normal",
      "eventos": null
    }
  });
  map.addAll({
    "Antartida": {
      "lugar": "Antartida",
      "Temperatura": -1,
      "clima": "normal",
      "eventos": null
    }
  });
  return map;
}

Stream<dynamic> weatherStream() async* {
  Random rn = Random();
  Map<String, dynamic> data = mapMaker();
  List<String> cities = [
    "Valencia",
    "Caracas",
    "Taj Majal",
    "Oregon",
    "Barcelona",
    "Oslo",
    "Antartida",
    "Chiclayork"
  ];
  while (true) {
    await Future.delayed(Duration(seconds: rn.nextInt(10)));

    yield data[cities[rn.nextInt(cities.length)]];
  }
}

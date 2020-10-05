import 'dart:convert';

City cityFromJson(String str) => City.fromJson(json.decode(str));

String cityToJson(City data) => json.encode(data.toJson());

class City {
  City({
    this.id,
    this.cityName,
    this.state,
  });

  int id;
  String cityName;
  String state;

  factory City.fromJson(Map<String, dynamic> json) => City(
        id: json["id"],
        cityName: json["CityName"],
        state: json["state"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "CityName": cityName,
        "state": state,
      };
}

import 'dart:convert';


import 'package:http/http.dart' as http;
import 'package:real_state_app/Modals/Property.dart';
import 'package:real_state_app/Modals/User.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ApiClient {
  final ENDPOINT = "http://real.eskoool.com";

  Map<String, String> header;

  String token;

  ApiClient() {
    SharedPreferences.getInstance().then((value) {
      token = value.getString("token");
      header = {"Authorization": token};
    });
  }

  Future<User> loginUser(String id, String pass) async {
    var body = {
      "grant_type": "password",
      "username": id,
      "password": pass,
      "utype": "2"
    };

    var response = await http.post("$ENDPOINT/token", body: body);

    try {
      User user = User.fromJson(JsonDecoder().convert(response.body));

      var pref = await SharedPreferences.getInstance();

      pref.setString("token", "Bearer ${user.accessToken}");
      pref.setString("user", user.userName);
      pref.setString("pass", pass);


      return user;
    } catch (e) {
      return User();
    }
  }

  Future<List<Property>> getAllProperty() async {

    var pref = await SharedPreferences.getInstance();

    token = pref.getString("token");
    header = {"Authorization": token};
    print(header.toString());
    var response = await http.get("$ENDPOINT/api/PropertyApi/getAllProperty",
        headers: header);

    var data = JsonDecoder().convert(response.body);

    List<Property> propertyList=List();

    if (data["Status"]) {
      List list = data['data'];

      for (var d in list) {
        propertyList.add(Property.fromJson(d));
      }
    }
    return propertyList;
  }

  signUpUser() {}
}

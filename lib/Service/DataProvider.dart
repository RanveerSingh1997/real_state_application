import 'package:flutter/cupertino.dart';
import 'package:real_state_app/Modals/City.dart';
import 'package:real_state_app/Modals/Property.dart';
import 'package:real_state_app/Modals/User.dart';
import 'package:real_state_app/Service/ApiClient.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DataProvider with ChangeNotifier {
  User user;
  ApiClient apiClient = new ApiClient();

  List<Property> propertyList;
  List<City> cityList;

  DataProvider() {
    getUser();
    getPropertyList();
    getCityList();
  }

  getUser() async {
    await apiClient.loginUser("Mahadev", "123");
    var pref = await SharedPreferences.getInstance();
    var id = pref.getString("user");
    var pass = pref.getString("pass");
    user = await apiClient.loginUser(id, pass);
    print(user.userName);

    if (user != null) notifyListeners();
  }

  getPropertyList() async {
    propertyList = await apiClient.getAllProperty();

    notifyListeners();
  }

  getCityList() async {
    cityList = await apiClient.getAllCities();

    notifyListeners();
  }
}

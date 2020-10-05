

import 'package:flutter/cupertino.dart';
import 'package:real_state_app/Modals/Property.dart';
import 'package:real_state_app/Modals/User.dart';
import 'package:real_state_app/Service/ApiClient.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DataProvider with ChangeNotifier {
  User user;
  ApiClient apiClient = new ApiClient();

  List<Property> propertyList;

  DataProvider() {
    getUser();
    getPropertyList();

  }

  getUser() async {
    var pref = await SharedPreferences.getInstance();
    var id = pref.getString("user");
    var pass = pref.getString("pass");
    user = await apiClient.loginUser(id, pass);
    print(user.userName);

    if (user != null) notifyListeners();
  }

  getPropertyList()
  async{
   propertyList =  await apiClient.getAllProperty();

   notifyListeners();
  }
}

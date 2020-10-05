import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:real_state_app/Constants/color_constants.dart';
import 'package:real_state_app/Screens/DrawerScreens/AddProperty.dart';
import 'package:real_state_app/Screens/DrawerScreens/AllPropertiesPage.dart';
import 'package:real_state_app/Screens/DrawerScreens/contact_us_page.dart';
import 'Screens/DrawerScreens/LoginPage.dart';
import 'Screens/DrawerScreens/ProfilePage.dart';
import 'Screens/DrawerScreens/RegisterPage.dart';
import 'Screens/DrawerScreens/SettingsPage.dart';
import 'Service/DataProvider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider.value(value: DataProvider())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          accentColor: Colors.black,
          primaryColor: kPrimaryColor,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home:AddProperty(),
        routes: {
          RegisterPage.routName: (ctx) => RegisterPage(),
          LoginPage.routName: (ctx) => LoginPage(),
          SettingsPage.routName: (ctx) => SettingsPage(),
          ProfilePage.routName: (ctx) => ProfilePage(),
          AllPropertiesPage.routName:(ctx)=>AllPropertiesPage(),
          ContactUsPage.routName:(ctx)=>ContactUsPage(),
          AddProperty.routName:(ctx)=>AddProperty()
        },
      ),
    );
  }
}

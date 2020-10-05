import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:real_state_app/Screens/LoginPage.dart';
import 'package:real_state_app/Screens/RegisterPage.dart';

import 'MyHomePage.dart';
import 'Screens/ProfilePage.dart';
import 'Screens/SettingsPage.dart';
import 'Service/DataProvider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: DataProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          accentColor: Colors.black,
          primaryColor: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home:MyHomePage(),
        routes: {
          RegisterPage.routName:(ctx)=>RegisterPage(),
          LoginPage.routName:(ctx)=>LoginPage(),
          SettingsPage.routName:(ctx)=>SettingsPage(),
          ProfilePage.routName:(ctx)=>ProfilePage()
        },
      ),
    );
  }
}

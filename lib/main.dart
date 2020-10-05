import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:real_state_app/Screens/LoginPage.dart';
import 'package:real_state_app/Screens/RegisterPage.dart';
import 'package:real_state_app/Service/DataProvider.dart';
import 'package:real_state_app/TestingApi.dart';
import 'package:real_state_app/Widgets/SingleProperty.dart';

import 'MyHomePage.dart';

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
        home:TestingApi(),
      ),
    );
  }
}

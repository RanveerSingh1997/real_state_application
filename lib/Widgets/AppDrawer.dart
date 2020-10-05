import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:real_state_app/Screens/DrawerScreens/LoginPage.dart';
import 'package:real_state_app/Screens/DrawerScreens/RegisterPage.dart';
import 'widgets.dart';



class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  "assets/images/ten_news.png",
                )),
            decoration: BoxDecoration(
              color: Colors.transparent,
            ),
          ),
          appBarItem(icons: Icons.home, text: "Home", onPress: () {}),
          appBarItem(
              icons: Icons.location_city, text: "Properties", onPress: () {}),
          appBarItem(
              icons: Icons.domain, text: "Property Detail", onPress: () {}),
          appBarItem(
              icons: Icons.search, text: "Property Search", onPress: () {}),
          appBarItem(icons: Icons.people, text: "Agents", onPress: () {}),
          appBarItem(
              icons: Icons.person_pin, text: "Agent Detail", onPress: () {}),
          appBarItem(
              icons: Icons.info, text: "About Real State", onPress: () {}),
          appBarItem(icons: Icons.mail, text: "Contact", onPress: () {}),
          appBarItem(text: "Member",textStyle:TextStyle(fontSize:15,letterSpacing:1.0,fontWeight:FontWeight.bold,color:Colors.black87)),
          appBarItem(
              icons: Icons.lock,
              text: "Register",
              onPress: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RegisterPage()));
              }),
          appBarItem(
              icons: Icons.exit_to_app,
              text: "Sign In",
              onPress: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              }),
          appBarItem(icons: Icons.dashboard, text: "Dashboard", onPress: () {}),
          appBarItem(icons: Icons.domain, text: "Properties", onPress: () {}),
          appBarItem(icons: Icons.add, text: "Add Property", onPress: () {}),
          appBarItem(icons: Icons.message, text: "Messages", onPress: () {}),
          appBarItem(
              icons: Icons.account_circle, text: "Profile", onPress: () {}),
          appBarItem(icons: Icons.star, text: "Favourites", onPress: () {}),
          appBarItem(icons: Icons.settings, text: "Settings", onPress: () {}),
          appBarItem(icons: Icons.exit_to_app, text: "Logout", onPress: () {}),
        ],
      ),
    );
  }
}

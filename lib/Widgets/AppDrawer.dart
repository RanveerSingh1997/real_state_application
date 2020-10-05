import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:real_state_app/Screens/LoginPage.dart';
import 'package:real_state_app/Screens/RegisterPage.dart';

import 'widgets.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
            height: 150,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.person,
                  size: 100,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text("Real State"),
                )
              ],
            ),
          ),
          appBarItem(icons:Icons.home,text:"Home",onPress:(){}),
          appBarItem(icons:Icons.location_city,text:"Properties",onPress:(){}),
          appBarItem(icons:Icons.domain,text:"Property Detail",onPress:(){}),
          appBarItem(icons:Icons.search,text:"Property Search",onPress:(){}),
          appBarItem(icons:Icons.people,text:"Agents",onPress:(){}),
          appBarItem(icons:Icons.person_pin,text:"Agent Detail",onPress:(){}),
          appBarItem(icons:Icons.people,text:"Agents",onPress:(){}),
          appBarItem(icons:Icons.people,text:"Agents",onPress:(){}),
          appBarItem(icons:Icons.info,text:"About Real State",onPress:(){}),
          appBarItem(text:"member"),
          appBarItem(icons:Icons.lock, text:"Register",onPress:(){
            Navigator.push(context,MaterialPageRoute(builder: (context) => RegisterPage()));
          }),
          appBarItem(icons:Icons.exit_to_app, text:"Sign In",onPress:(){
            Navigator.push(context,MaterialPageRoute(builder: (context) => LoginPage()));
          }),
          appBarItem(icons:Icons.dashboard, text:"Dashboard",onPress:(){}),
          appBarItem(icons:Icons.domain, text:"Properties",onPress:(){}),
          appBarItem(icons:Icons.add, text:"Dashboard",onPress:(){}),
          appBarItem(icons:Icons.message, text:"Messages",onPress:(){}),
          appBarItem(icons:Icons.person, text:"Profile", onPress:() {}),
          appBarItem(icons:Icons.star,text: "Favourites",onPress: () {}),
          appBarItem(icons:Icons.settings, text:"Settings",onPress: () {}),
          appBarItem(icons:Icons.exit_to_app, text:"Logout",onPress:() {}),
        ],
      ),
    );
  }
}


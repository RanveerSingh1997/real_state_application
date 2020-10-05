import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:real_state_app/Widgets/widgets.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SIGN IN'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
            margin: EdgeInsets.all(10),
            child: Column(
              children: [
                textFormField(label:"Email Address or Mobile No"),
                textFormField(label:"Password"),
                customRaisedButton(" LOGIN")
              ],
            ),
          ),
          SizedBox(height:20,),
          Text("Don't have an account yet?"),
          SizedBox(height:10,),
          Text("SING UP HERE"),
        ],
      ),
    );
  }
}

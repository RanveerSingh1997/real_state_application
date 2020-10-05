import 'package:flutter/material.dart';
import 'package:real_state_app/Widgets/widgets.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SIGN UP'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
            margin: EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child:textFormField(label:"First Name"),
                    ),
                    Expanded(
                      child:textFormField(label:"Last Name"),
                    ),
                  ],
                ),
                textFormField(label:"Email Address"),
                textFormField(label:"Mobile Number"),
                textFormField(label:"Password"),
                customRaisedButton(" Sign UP")
              ],
            ),
          ),
          SizedBox(height:20,),
          Text("Do you have account?"),
          SizedBox(height:10,),
          Text("LOGIN"),
        ],
      ),
    );
  }
}

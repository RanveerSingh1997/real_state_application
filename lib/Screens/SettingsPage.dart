import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:real_state_app/Widgets/widgets.dart';

class SettingsPage extends StatefulWidget {
  static final String routName = "SettingsPage";

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool b=false;
  bool s=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            decoration: BoxDecoration(color: Theme.of(context).primaryColor),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.settings,
                  size: 100,
                  color: Colors.orange,
                ),
                Text("Settings")
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:10),
            child: Card(
              color:s?Colors.grey.shade400:Colors.white ,
              child: ExpansionTile(
                onExpansionChanged:(bool){
                  setState(() {
                    s=!s;
                  });
                },
                trailing:Icon(Icons.add,size:24,color:Colors.black,),
                title: Text("Change Password"),
                children: [
                  textFormField(label: "Current Password"),
                  textFormField(label: "New Password"),
                  textFormField(label: "Confirm Password"),
                  SizedBox(height:20,),
                  Container(
                    height:45,
                    width:MediaQuery.of(context).size.width,
                    child: RaisedButton(
                      elevation:0.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                      color:Colors.orange,
                      child: Row(
                        mainAxisAlignment:MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('Save', style: TextStyle(color: Colors.black)),
                          Icon(Icons.arrow_forward),
                        ],
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:10),
            child: Card(
              color:b?Colors.grey.shade400:Colors.white,
              child: ExpansionTile(
                onExpansionChanged:(bool){
                 setState(() {
                   b=!b;
                 });
                },
                trailing:Icon(Icons.add,size:24,color:Colors.black,),
                title: Text("Notification"),
                children: [
                  CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    tristate:true,
                    value:false,
                    title:Text("When someone enquired property"),
                  ),
                  CheckboxListTile(
                    value:true,
                    controlAffinity: ListTileControlAffinity.leading,
                    title:Text("When someone contact me"),
                  ),
                  SizedBox(height:20,),
                  Container(
                    height:45,
                    width:MediaQuery.of(context).size.width,
                    child: RaisedButton(
                      elevation:0.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                      color:Colors.orange,
                      child: Row(
                        mainAxisAlignment:MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('Save', style: TextStyle(color: Colors.black)),
                          Icon(Icons.arrow_forward),
                        ],
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

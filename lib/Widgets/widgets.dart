import 'package:flutter/material.dart';

//App bar Items
Widget appBarItem({icons, text, onPress}) {
  return ListTile(
    leading: Icon(icons),
    title: Text("Logout"),
    onTap: onPress,
  );
}


Widget textFormField({label}){
  return TextFormField(
    decoration: InputDecoration(labelText:label),
  );
}

Widget customRaisedButton(text){
  return Container(
      height: 40,
      decoration: BoxDecoration(color: Colors.orange),
      child: Row(
        mainAxisAlignment:MainAxisAlignment.spaceBetween,
        children: [
          Text(
             text,
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold),
          ),
          Icon(Icons.arrow_forward)
        ],
      )
  );
}


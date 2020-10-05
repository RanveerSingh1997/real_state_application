import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//App bar Items
Widget appBarItem({icons, text,textStyle,onPress}) {
  return ListTile(
    leading: Icon(icons,color:Colors.black,),
    title: Text(text,style:textStyle,),
    onTap: onPress,
  );
}

Widget buildSingleTab(text,{selected})
{
  return Text(
    text,
    style: TextStyle(color: selected?Colors.blue:Colors.white),
  );
}

Widget contactUs({icons,title,subtitle}){
  return ListTile(
    leading:Icon(FontAwesomeIcons.addressBook),
    title:Text("ADDRESS"),
    subtitle:Text("3-277-10 Susan Apartment\nLiverpool,United kingdom"),
  );
}

Widget SingleIconText(icon, text, context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Icon(
        icon,
        color: Colors.black54,
        size: 20,
      ),
      SizedBox(
        width: 8,
      ),
      Text(
        text,
        style: Theme.of(context)
            .textTheme
            .headline6
            .copyWith(color: Colors.black54),
      ),
    ],
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


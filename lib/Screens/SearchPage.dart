import 'package:flutter/material.dart';
class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment:MainAxisAlignment.spaceAround,
          children: [
            RaisedButton(onPressed: (){},child:Text("Buy"),),
            RaisedButton(onPressed: (){},child:Text("Rent"),),
            RaisedButton(onPressed: (){},child:Text("Projects"),),
          ],
        ),
        Text(" Location",style:TextStyle(color:Colors.black),),
        Padding(
          padding: const EdgeInsets.symmetric(vertical:8,horizontal:10),
          child: TextFormField(
            decoration:InputDecoration(
                fillColor:Colors.white,
                filled:true,
                border:InputBorder.none,
                suffixIcon:Icon(Icons.search),
                hintText:"eg Brixton"
            ),
          ),
        ),
        Text(" Bedrooms",style:TextStyle(color:Colors.black),),
        Row(
          children: [

            ],
        ),
        Text(" Price",style:TextStyle(color:Colors.black),),
        Row(
          children: [

          ],
        ),
      ],
    );
  }
}

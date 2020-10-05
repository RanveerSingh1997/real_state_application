import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:real_state_app/Service/DataProvider.dart';
import 'package:real_state_app/Widgets/FavSingleProperty.dart';
import 'package:real_state_app/Widgets/SingleProperty.dart';
import 'package:real_state_app/Widgets/SingleProperyHorizontal.dart';

import 'Modals/Property.dart';

class TestingApi extends StatefulWidget {
  @override
  _TestingApiState createState() => _TestingApiState();
}

class _TestingApiState extends State<TestingApi> {
  @override
  Widget build(BuildContext context) {
    List<Property> list = Provider.of<DataProvider>(context).propertyList;
    return Scaffold(
      appBar: AppBar(title: Text("testing"),),


      body: (list==null)?Center(child: CircularProgressIndicator(),):
      Column(
        children: [
          Container(
            height: 250,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context,index)=>SinglePropertyHorizontal(),itemCount: list.length,),
          ),
          Expanded(child: ListView.builder(itemBuilder: (context,index)=>FavouriteSingleProperty(),itemCount: list.length,)),
        ],
      ),

    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:real_state_app/Modals/Property.dart';
import 'package:real_state_app/Service/DataProvider.dart';
import 'package:real_state_app/Widgets/SingleProperty.dart';

class AllPropertiesPage extends StatelessWidget {
  static final String routName = "AllProperties";

  @override
  Widget build(BuildContext context) {
    List<Property> list = Provider.of<DataProvider>(context).propertyList;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text("Properties"),
        centerTitle: true,
      ),
      body: list == null
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Container(
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) => SingleProperty(),
                itemCount: list.length,
              ),
            ),
    );
  }
}

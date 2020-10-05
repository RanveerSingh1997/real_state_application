import 'package:flutter/material.dart';
import 'package:real_state_app/Widgets/AppDrawer.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: Text("Dashboard"),
        leading: Builder(
          builder:(context)=> IconButton(
            icon: Icon(Icons.sort),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
      ),
      drawer: AppDrawer(),
      body:Container(
      ),
    );
  }
}

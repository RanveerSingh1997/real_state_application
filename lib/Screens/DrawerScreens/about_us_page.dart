import 'package:flutter/material.dart';
import 'package:real_state_app/Constants/custom_paint.dart';

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text("About Us"),
        centerTitle:true,
      ),
      body: Column(
        children: [
          Container(
            child: CustomPaint(
              painter: ShapesPainter(),
              child: Container(
                height: 150,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

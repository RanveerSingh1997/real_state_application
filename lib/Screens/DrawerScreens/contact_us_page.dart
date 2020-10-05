import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:real_state_app/Constants/custom_paint.dart';
import 'package:real_state_app/Widgets/widgets.dart';

class ContactUsPage extends StatelessWidget {
  static final String routName="ContactUs";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text("Contact Us"),
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
          contactUs(
              icons: FontAwesomeIcons.mapMarker,
              title: "ADDRESS",
              subtitle: "3-277-10 Susan Apartment\nLiverpool,United kingdom",
          ),
          contactUs(
            icons: FontAwesomeIcons.phone,
            title: "PHONE",
            subtitle: "+01123456789/+0123456789",
          ),
          contactUs(
            icons: FontAwesomeIcons.envelope,
            title: "EMAIL",
            subtitle: "info@myyaorealtor.com",
          ),
          contactUs(
            icons: FontAwesomeIcons.globe,
            title: "WEBSITE",
            subtitle: "www.myyaowrealtor",
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:real_state_app/Constants/color_constants.dart';

class AddProperty extends StatefulWidget {
 static final String routName="AddProperty";
  @override
  _AddPropertyState createState() => _AddPropertyState();
}

class _AddPropertyState extends State<AddProperty> {
  final List<bool> isSelected = [false, true, false,false];
  FocusNode focusNodeButton1 = FocusNode();
  FocusNode focusNodeButton2 = FocusNode();
  FocusNode focusNodeButton3 = FocusNode();
  List<FocusNode> focusToggle;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    focusToggle = [focusNodeButton1, focusNodeButton2, focusNodeButton3];
  }

  @override
  void dispose() {
    // Clean up the focus node when the Form is disposed.
    focusNodeButton1.dispose();
    focusNodeButton2.dispose();
    focusNodeButton3.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation:0.0,
        title: Text("Create"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Container(
            color:kPrimaryColor,
            child: Center(
              child: ToggleButtons(
                children: [
                  Text("Overview"),
                  Text("Location"),
                  Text("Amenities"),
                  Text("Photos"),
                ],
                isSelected: isSelected,
                onPressed: (index) {
                  setState(() {
                    isSelected[index] = !isSelected[index];
                  });
                },
              ),
            ),
          ),
          Row(
            children: [
              RaisedButton(onPressed:(){},
                child:Row(
                  children: [
                    Icon(Icons.arrow_back),
                    Text("PREVIOUS")
                  ],
                ),
              ),
              RaisedButton(onPressed:(){},
                child:Row(
                  children: [
                    Text("NEXT"),
                    Icon(Icons.arrow_back),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

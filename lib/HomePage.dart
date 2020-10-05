import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Widgets/AppDrawer.dart';
import 'Widgets/widgets.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<bool> _isSelected = [false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: Text("Home"),
        leading: Builder(
          builder:(context)=> IconButton(
            icon: Icon(Icons.sort),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
      ),
     drawer:AppDrawer(),
      body: Stack(
        children: [
          CustomPaint(
            painter: ShapesPainter(),
            child: Container(
              height: MediaQuery.of(context).size.height*.45,
            ),
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 8),
                height: 35,
                child: ToggleButtons(
                  constraints: BoxConstraints.expand(width: MediaQuery.of(context).size.width*.22),
                  borderRadius: BorderRadius.circular(4),
                  borderColor: Colors.white,
                  selectedColor: Colors.white,
                  hoverColor: Colors.white,
                  fillColor: Colors.white,
                  selectedBorderColor: Colors.white,

                  children: <Widget>[

                    buildSingleTab("BUY",selected: _isSelected[0]),
                    buildSingleTab("RENT",selected: _isSelected[1]),
                    buildSingleTab("PROJECTS",selected: _isSelected[2]),
                  ],
                  isSelected: _isSelected,
                  onPressed: (int index) {
                    setState(() {

                    for(int i = 0 ; i < _isSelected.length;i++)
                      {
                        _isSelected[i] = false;
                      }

                      _isSelected[index] = true;


                    });
                  },
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                child: TextFormField(
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: InputBorder.none,
                      suffixIcon: Icon(Icons.search),
                      hintText: "eg Brixton"),
                ),
              )

              // Container(
              //   he
              // )
            ],



          )
        ],
      ),
    );
  }

}

class ShapesPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = Colors.blue;
    var path = Path();
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height / 1.5);

    path.lineTo(0, size.height);
    // close the path to form a bounded shape
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

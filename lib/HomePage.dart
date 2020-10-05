import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<bool> _isSelected=[false,false,false];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomPaint(
          painter: ShapesPainter(),
          child: Container(
            height: 200,
          ),
        ),
        Column(
          children: [
            Container(
              height:35,
              child: ToggleButtons(
                borderRadius:BorderRadius.circular(10),
                borderColor:Colors.white,
                selectedColor:Colors.white,
                hoverColor:Colors.white,
                splashColor:Colors.white,
                fillColor:Colors.white,
                children: <Widget>[
                  Text("BUY",style:TextStyle(color:Colors.white),),
                  Text("RENT",style:TextStyle(color:Colors.white),),
                  Text("PROJECTS",style:TextStyle(color:Colors.white),)
                ],
                isSelected: _isSelected,
                onPressed: (int index) {
                  setState(() {
                    _isSelected[index] = !_isSelected[index];
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical:8,horizontal:15),
              child: TextFormField(
                decoration:InputDecoration(
                    fillColor:Colors.white,
                    filled:true,
                    border:InputBorder.none,
                    suffixIcon:Icon(Icons.search),
                    hintText:"eg Brixton"
                ),
              ),
            )
          ],
        )
      ],
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
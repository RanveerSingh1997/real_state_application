import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:real_state_app/Constants/custom_paint.dart';
import 'package:real_state_app/Service/DataProvider.dart';
import 'package:real_state_app/Widgets/AppDrawer.dart';
import 'package:real_state_app/Widgets/SingleProperyHorizontal.dart';
import 'package:real_state_app/Widgets/widgets.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<bool> _isSelected = [false, false, false];

  @override
  Widget build(BuildContext context) {
    var list = Provider.of<DataProvider>(context).propertyList;
    var cityList = Provider.of<DataProvider>(context).cityList;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: Text("Home"),
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.sort),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
      ),
      drawer: AppDrawer(),
      body: Stack(
        children: [
          CustomPaint(
            painter: ShapesPainter(),
            child: Container(
              height: MediaQuery.of(context).size.height * .45,
            ),
          ),
          ListView(
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 8),
                  height: 35,
                  child: ToggleButtons(
                    constraints: BoxConstraints.expand(
                        width: MediaQuery.of(context).size.width * .22),
                    borderRadius: BorderRadius.circular(4),
                    borderColor: Colors.white,
                    selectedColor: Colors.white,
                    hoverColor: Colors.white,
                    fillColor: Colors.white,
                    selectedBorderColor: Colors.white,
                    children: <Widget>[
                      buildSingleTab("BUY", selected: _isSelected[0]),
                      buildSingleTab("RENT", selected: _isSelected[1]),
                      buildSingleTab("PROJECTS", selected: _isSelected[2]),
                    ],
                    isSelected: _isSelected,
                    onPressed: (int index) {
                      setState(() {
                        for (int i = 0; i < _isSelected.length; i++) {
                          _isSelected[i] = false;
                        }

                        _isSelected[index] = true;
                      });
                    },
                  ),
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
              ),
              Container(
                padding: EdgeInsets.all(10),
                height: 260,
                child: list == null
                    ? Center(
                        child: CircularProgressIndicator(),
                      )
                    : ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (cxt, ind) => SinglePropertyHorizontal(),
                      ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FlatButton.icon( icon: Icon(FontAwesomeIcons.mapMarkerAlt), label: Text("POPULAR CITIES")),
                  FlatButton(onPressed: (){}, child: Text("SEE ALL"))
                ],
              ),

              Expanded(
                child: GridView.builder(
                  shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemCount: 4,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio:2 ,crossAxisSpacing: 1,mainAxisSpacing: 1), itemBuilder: (context,index)=>Container(
                  padding: EdgeInsets.all(11),
                  margin: EdgeInsets.only(left: 15,right: 15,top: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(child: Text(cityList[index].cityName)),
                )),
              )
            ],
          )
        ],
      ),
    );
  }
}

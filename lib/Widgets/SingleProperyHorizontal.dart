import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:real_state_app/Widgets/widgets.dart';

class SinglePropertyHorizontal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      margin: EdgeInsets.symmetric(vertical: 4, horizontal: 10),
      child: InkWell(
        onHover: (val){

        },
        child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5)
          ),
          elevation: 8,
          child: Column(
            children: [
              Expanded(
                  flex: 3,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(5),topLeft: Radius.circular(5)),
                    child: Stack(
                      children: [


                        Positioned(
                          left: 0,
                          right: 0,
                          top: 0,
                          bottom: 0,
                          child: Container(
                            color: Colors.grey,
                            child: Image.network("https://images.pexels.com/photos/106399/pexels-photo-106399.jpeg?cs=srgb&dl=pexels-binyamin-mellish-106399.jpg&fm=jpg",
                              fit: BoxFit.cover,),
                          ),
                        ),
                        Positioned(
                            right: 0,
                            top: 10,
                            child: IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.favorite_rounded,color: Colors.yellow,),

                            ))

                      ],
                    ),
                  )),
              Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      SingleIconText(FontAwesomeIcons.rupeeSign, "212,33,2", context),
                      SizedBox(
                        width: 15,
                      ),
                      SingleIconText(FontAwesomeIcons.bed, "2", context),
                      SizedBox(
                        width: 15,
                      ),
                      SingleIconText(FontAwesomeIcons.bath, "2", context)
                    ],
                  ))
                ],
          ),
        ),
      ),
    );
  }
}

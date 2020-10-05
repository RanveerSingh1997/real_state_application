import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:real_state_app/Widgets/widgets.dart';

class FavouriteSingleProperty extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: EdgeInsets.symmetric(vertical: 1),
      child: InkWell(
        onHover: (val){

        },
        child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5)
          ),
          elevation: 1,
          child: Row(
            children: [
              Expanded(
                  flex: 2,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(5),topLeft: Radius.circular(5)),
                    child: Image.network("https://images.pexels.com/photos/106399/pexels-photo-106399.jpeg?cs=srgb&dl=pexels-binyamin-mellish-106399.jpg&fm=jpg",
                      fit: BoxFit.cover,),
                  )),
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                      children: [
                      Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "\u20B9",
                          style: Theme.of(context)
                              .textTheme
                              .headline6
                              .copyWith(fontSize : 16,color: Colors.black),
                        ),
                        Text(
                          "4515405",
                          style: Theme.of(context)
                              .textTheme
                              .headline6
                              .copyWith(fontSize : 16,color: Colors.black),
                        ),
                      ],
                    ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "India",
                            style: Theme.of(context)
                                .textTheme
                                .headline6
                                .copyWith(fontSize : 14,color: Colors.black54),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SingleIconText(FontAwesomeIcons.bed, "2", context),
                            SizedBox(
                              width: 15,
                            ),
                            SingleIconText(FontAwesomeIcons.bath, "2", context)
                          ],
                        ),
                      ],
                    ),
                ),
              ),
              IconButton(
                onPressed: (){},
                icon: Icon(Icons.delete,color: Colors.grey,),
              )
            ],
          ),
        ),
      ),
    );
  }
}

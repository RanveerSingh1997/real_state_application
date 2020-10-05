import 'package:flutter/material.dart';
import 'package:real_state_app/Constants/color_constants.dart';
import 'package:real_state_app/Widgets/widgets.dart';

class ProfilePage extends StatefulWidget {
  static final String routName = "ProfilePage";

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool b = false;
  bool a = false;
  bool c = false;
  bool s = false;
  int _value = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(),
      body: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            decoration: BoxDecoration(color: Theme.of(context).primaryColor),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.person_outline,
                  size: 100,
                  color: Colors.orange,
                ),
                Text(
                  "Kent Parker",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Liverpool, United Kingdom",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Card(
              color: b ? Colors.white : kFadeGreyColor,
              child: ExpansionTile(
                onExpansionChanged: (bool) {
                  setState(() {
                    b = !b;
                  });
                },
                trailing: Icon(
                  Icons.add,
                  size: 24,
                  color: Colors.black,
                ),
                title: Text("Basic"),
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: textFormField(label: "First Name"),
                      ),
                      Expanded(
                        child: textFormField(label: "Last Name"),
                      ),
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    child: DropdownButton(
                        value: _value,
                        isExpanded: true,
                        autofocus: true,
                        items: [
                          DropdownMenuItem(
                            child: Text("Male"),
                            value: 1,
                          ),
                          DropdownMenuItem(
                            child: Text("Female"),
                            value: 2,
                          ),
                        ],
                        onChanged: (value) {
                          setState(() {
                            _value = value;
                          });
                        }),
                  ),
                  TextFormField(
                    maxLines: 3,
                    decoration: InputDecoration(
                      labelText: "About You",
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 45,
                    width: MediaQuery.of(context).size.width,
                    child: RaisedButton(
                      elevation: 0.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                      color: kSecondaryColor,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('Save', style: TextStyle(color: Colors.black)),
                          Icon(Icons.arrow_forward),
                        ],
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Card(
              color: a ? Colors.white :kFadeGreyColor,
              child: ExpansionTile(
                onExpansionChanged: (bool) {
                  setState(() {
                    a = !a;
                  });
                },
                trailing: Icon(
                  Icons.add,
                  size: 24,
                  color: Colors.black,
                ),
                title: Text("Address Information"),
                children: [
                  textFormField(label: "Address"),
                  Row(
                    children: [
                      Expanded(
                        child: textFormField(label: "City"),
                      ),
                      Expanded(
                        child: textFormField(label: "State"),
                      )
                    ],
                  ),
                  textFormField(label: "Country"),
                  textFormField(label: "Postcode"),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 45,
                    width: MediaQuery.of(context).size.width,
                    child: RaisedButton(
                      elevation: 0.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                      color: kSecondaryColor,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('Save', style: TextStyle(color: Colors.black)),
                          Icon(Icons.arrow_forward),
                        ],
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Card(
              color: c ? Colors.white :kFadeGreyColor,
              child: ExpansionTile(
                onExpansionChanged: (bool) {
                  setState(() {
                    c = !c;
                  });
                },
                trailing: Icon(
                  Icons.add,
                  size: 24,
                  color: Colors.black,
                ),
                title: Text("Contact Information"),
                children: [
                  textFormField(label: "Your Mobile Number"),
                  textFormField(label: "Your Telephone Number"),
                  textFormField(label: "Your Email Address"),
                  textFormField(label: "Your Website Url"),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 45,
                    width: MediaQuery.of(context).size.width,
                    child: RaisedButton(
                      elevation: 0.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                      color: kSecondaryColor,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('Save', style: TextStyle(color: Colors.black)),
                          Icon(Icons.arrow_forward),
                        ],
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Card(
              color: s ? Colors.white : kFadeGreyColor,
              child: ExpansionTile(
                onExpansionChanged: (bool) {
                  setState(() {
                    s = !s;
                  });
                },
                trailing: Icon(
                  Icons.add,
                  size: 24,
                  color: Colors.black,
                ),
                title: Text("Social Media"),
                children: [
                  textFormField(label: "Facebook"),
                  textFormField(label: "Twitter"),
                  textFormField(label: "YouTube"),
                  textFormField(label: "Google+"),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 45,
                    width: MediaQuery.of(context).size.width,
                    child: RaisedButton(
                      elevation: 0.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                      color:kSecondaryColor,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('Save', style: TextStyle(color: Colors.black)),
                          Icon(Icons.arrow_forward),
                        ],
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

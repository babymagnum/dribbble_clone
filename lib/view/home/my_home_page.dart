import 'package:division/division.dart';
import 'package:dribbble_clone/core/helper/locator.dart';
import 'package:dribbble_clone/core/theme/theme_color.dart';
import 'package:dribbble_clone/stores/base_stores/base_stores.dart';
import 'package:dribbble_clone/view/screen2/screen2_view.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {

  static const routeName = 'my-home-page';

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var _baseStores = locator<BaseStores>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 15),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('HUMMING\nBIRD.', style: TextStyle(color: Colors.black54, fontSize: 20)),
                    Spacer(),
                    Parent(
                      style: ParentStyle()..ripple(true)..borderRadius(all: 5),
                      child: Text('Episode', style: TextStyle(color: Colors.black54, fontSize: 15))
                    ),
                    SizedBox(width: 25,),
                    Text('About', style: TextStyle(color: Colors.black54, fontSize: 15))
                  ],
                ),
                SizedBox(height: 50),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('FLUTTER WEB.\nTHE BASIC', style: TextStyle(color: Colors.black, fontSize: 40)),
                          SizedBox(height: 5),
                          Text('In this course we will go over the basic of using Flutter web for development. Topics will include Responsive Layout, Deploying, Font Changes, Hover functionality, Modals and more.',
                            style: TextStyle(color: Colors.black87, fontSize: 15),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.1),
                    Parent(
                      gesture: Gestures()..onTap(() {
                        _baseStores.testAction(false);
                        Navigator.of(context).pushNamed(Screen2View.routeName);
                      }),
                      style: ParentStyle()
                        ..borderRadius(all: 5)
                        ..background.color(Colors.deepPurpleAccent)
                        ..ripple(true)
                        ..padding(all: 10),
                      child: Text('Join course', style: TextStyle(fontSize: 13, color: Colors.white),),
                    )
                  ],
                ),
                SizedBox(height: 20),
                Container(height: 1, color: ThemeColor.lightGrey3),
                SizedBox(height: 20),
                Parent(
                  gesture: Gestures()..onTap(() {}),
                  child: Text('Signup'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
import 'package:dribbble_clone/core/theme/theme_text_style.dart';
import 'package:dribbble_clone/view/add_shots/add_shots_view.dart';
import 'package:flutter/material.dart';

import '../login/login.dart';

class MyHomePage extends StatefulWidget {

  static const routeName = 'my-home-page';

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 1), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => LoginView()));
    });
    
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Text('Splash', style: ThemeTextStyle.ubuntuM.apply(
          fontSizeDelta: 10
        ),)
      ),
    );
  }
}
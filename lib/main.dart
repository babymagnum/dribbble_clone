import 'package:dribbble_clone/core/helper/locator.dart';
import 'package:dribbble_clone/core/helper/router.dart';
import 'package:flutter/material.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  /* Don't forget to change BASE_API to Constant.API_PRODUCTION when building apk / when testing live server */
  static const BASE_API = 'https://api.dribbble.com/v2';
  static const client_id = '126ff12176341a89b40d410390025deb3bb36e22ba4da210a4b1053138c2fcb2';
  static const client_secret = '31daa90d9d7bc7a737ed17bb72933743e45d96e018af2cd8dd5fec0f8c475ada';
  static const token = '3ec6c6b0f8a1ecc6edf1039a6f0e7e27b1b01e72077aa5151e72d4c7c7d2e9bd';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: Router.initialRoute,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Router.generateRoute,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

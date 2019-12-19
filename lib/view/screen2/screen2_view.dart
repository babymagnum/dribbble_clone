import 'package:dribbble_clone/core/locator.dart';
import 'package:dribbble_clone/main.dart';
import 'package:flutter/material.dart';
import '../../stores/base_stores/base_stores.dart';

class Screen2View extends StatelessWidget {

  static const routeName = 'screen2-view';

  var _baseStores = locator<BaseStores>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 2'),
      ),
      body: Column(
        children: <Widget>[
          Text(_baseStores.isLoading ? 'true' : 'false'),
          Text(MyApp.BASE_API),
        ],
      ),
    );
  }
}

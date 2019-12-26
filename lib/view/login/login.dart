import 'package:flutter/material.dart';

import '../../core/helper/responsive_layout.dart';
import 'widgets/login_large_content.dart';
import 'widgets/login_medium_content.dart';

class LoginView extends StatefulWidget {

  static const routeName = 'login-view';

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout.isLargeScreen(context) ?
      LoginLargeContent() : LoginMediumContent() ,
    );
  }
}



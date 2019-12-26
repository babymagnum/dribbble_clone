import 'package:flutter/material.dart';
import '../../../core/helper/responsive_layout.dart';
import '../../../core/theme/theme_color.dart';
import '../../../core/theme/theme_text_style.dart';

class LoginLargeContent extends StatefulWidget {
  @override
  _LoginLargeContentState createState() => _LoginLargeContentState();
}

class _LoginLargeContentState extends State<LoginLargeContent> {

  var _logoColor = ThemeColor.grey1;

  @override
  Widget build(BuildContext context) {

    final _screenSize = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              height: _screenSize.height,
              padding: EdgeInsets.symmetric(horizontal: 30),
              color: ThemeColor.pinkImageLogin.withOpacity(0.43),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: _screenSize.width * 0.04),
                  InkWell(
                    onHover: (isHover) {
                      setState(() => _logoColor = isHover ? Colors.white : ThemeColor.grey1);
                    },
                    child: Image.asset('assets/images/dribbble_logo.png', color: _logoColor)
                  ),
                  SizedBox(height: _screenSize.width * 0.02,),
                  Text('Discover the world’s top Designers & Creatives.', style: ThemeTextStyle.robotoB.apply(
                    color: ThemeColor.black.withOpacity(0.8), fontSizeDelta: 4
                  )),
                  SizedBox(height: _screenSize.width * 0.02,),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fitHeight,
                          image: AssetImage('assets/images/logo_login.png')
                        )
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  RichText(
                    text: TextSpan(
                      text: 'Art by ',
                      style: ThemeTextStyle.robotoR.apply(
                        color: ThemeColor.dark_grey, fontSizeDelta: -2
                      ),
                      children: [
                        TextSpan(
                          text: 'Irina Valeeva',
                          style: ThemeTextStyle.robotoR.apply(
                            color: ThemeColor.dark_grey, fontSizeDelta: -2, decoration: TextDecoration.underline
                          )
                        )
                      ]
                    ),
                  ),
                  SizedBox(height: 20,)
                ]
              )
            )
          ),
          Expanded(
            flex: 2,
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(right: _screenSize.width * 0.02),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: ResponsiveLayout.isLargeScreen(context) ? _screenSize.width * 0.03 : _screenSize.width * 0.04),
                    ResponsiveLayout.isLargeScreen(context) ?
                    Align(
                      alignment: Alignment.topRight,
                      child: RichText(
                        text: TextSpan(
                          text: 'Not a member? ',
                          style: ThemeTextStyle.robotoR.apply(
                            fontSizeDelta: -2
                          ),
                          children: [
                            TextSpan(
                              text: 'Sign up now ',
                              style: ThemeTextStyle.robotoR.apply(
                                color: Colors.lightBlueAccent, fontSizeDelta: -2
                              ),
                            )
                          ]
                        ),
                      ),
                    ) :
                    Container(),
                    ResponsiveLayout.isLargeScreen(context) ? Container() :
                    Image.asset('assets/images/dribbble_logo.png', height: 25),
                    SizedBox(height: _screenSize.width * 0.1,)
                  ],
                ),
              ),
            )
          )
        ]
      )
    );
  }

}


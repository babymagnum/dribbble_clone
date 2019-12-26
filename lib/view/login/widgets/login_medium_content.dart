import 'package:flutter/material.dart';
import '../../../core/helper/responsive_layout.dart';
import '../../../core/theme/theme_color.dart';
import '../../../core/theme/theme_text_style.dart';

class LoginMediumContent extends StatefulWidget {
  @override
  _LoginMediumContentState createState() => _LoginMediumContentState();
}

class _LoginMediumContentState extends State<LoginMediumContent> {

  var _bgColorGoogle = Colors.lightBlueAccent, _bgColorTwitter = ThemeColor.grey, _bgColorFacebook = ThemeColor.grey;

  @override
  Widget build(BuildContext context) {

    final _screenSize = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(right: ResponsiveLayout.isLargeScreen(context) ? _screenSize.width * 0.02 : 0),
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
            Align(
              alignment: Alignment.center,
              child: Container(
                width: 450,
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ResponsiveLayout.isLargeScreen(context) ? Container() :
                    Image.asset('assets/images/dribbble_logo.png', height: 25),
                    SizedBox(height: 30,),
                    Text('Sign in to Dribbble', style: ThemeTextStyle.robotoB.apply(
                      fontSizeDelta: 4
                    )),
                    SizedBox(height: 20,),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Parent(
                            gesture: Gestures()..onTap(() {}),
                            style: ParentStyle()
                              ..ripple(true)
                              ..borderRadius(all: 5),
                          ),
                        ),
                        SizedBox(width: 10,),
                        InkWell(
                          onHover: (isHover) => setState(() => _bgColorTwitter = isHover ? ThemeColor.dark_grey : ThemeColor.grey),
                          child: Parent(
                            style: ParentStyle()
                              ..ripple(true)
                              ..borderRadius(all: 5)
                              ..width(50)..height(50)
                              ..background.color(_bgColorTwitter),
                            child: Center(
                              child: Icon(Icons.flag, size: 20, color: ThemeColor.lighter_grey,),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

}


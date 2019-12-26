import 'package:division/division.dart';
import 'package:flutter/material.dart';
import '../../../core/helper/responsive_layout.dart';
import '../../../core/theme/theme_color.dart';
import '../../../core/theme/theme_text_style.dart';

class LoginLargeContent extends StatefulWidget {
  @override
  _LoginLargeContentState createState() => _LoginLargeContentState();
}

class _LoginLargeContentState extends State<LoginLargeContent> {

  var _bgColorGoogle = ThemeColor.google_blue, _bgColorSignin = ThemeColor.dribbble_pink, _logoColor = ThemeColor.grey1, _bgColorTwitter = ThemeColor.lightGrey1, _bgColorFacebook = ThemeColor.lightGrey1;
  var _passwordFocus = FocusNode();

  @override
  Widget build(BuildContext context) {

    final _screenSize = MediaQuery.of(context).size;

    return Row(
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
                  SizedBox(height: _screenSize.height * 0.08,),
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
                                child: InkWell(
                                  onHover: (isHover) => setState(() => _bgColorGoogle = isHover ? ThemeColor.google_blue_dark : ThemeColor.google_blue),
                                  child: Parent(
                                    gesture: Gestures()..onTap(() {}),
                                    style: ParentStyle()
                                      ..ripple(true)
                                      ..height(50)
                                      ..background.color(_bgColorGoogle)
                                      ..borderRadius(all: 5),
                                    child: Row(
                                      children: <Widget>[
                                        SizedBox(width: 10,),
                                        Image.asset('assets/images/search.png', width: 20, height: 20, color: Colors.white,),
                                        Expanded(
                                          child: Text('Sign in with Google', textAlign: TextAlign.center, style: ThemeTextStyle.robotoB.apply(
                                            color: Colors.white, fontSizeDelta: -1
                                          ))
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 10,),
                              InkWell(
                                onHover: (isHover) => setState(() => _bgColorTwitter = isHover ? ThemeColor.dark_grey : ThemeColor.lightGrey1),
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
                              ),
                              SizedBox(width: 10,),
                              InkWell(
                                onHover: (isHover) => setState(() => _bgColorFacebook = isHover ? ThemeColor.dark_grey : ThemeColor.lightGrey1),
                                child: Parent(
                                  style: ParentStyle()
                                    ..ripple(true)
                                    ..borderRadius(all: 5)
                                    ..width(50)..height(50)
                                    ..background.color(_bgColorFacebook),
                                  child: Center(
                                    child: Icon(Icons.flag, size: 20, color: ThemeColor.lighter_grey,),
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 20,),
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: Container(
                                  color: ThemeColor.lighter_grey, height: 1, width: double.infinity,
                                )
                              ),
                              SizedBox(width: 10,),
                              Text('Or', style: ThemeTextStyle.robotoR.apply(
                                fontSizeDelta: 1
                              ),),
                              SizedBox(width: 10,),
                              Expanded(
                                child: Container(
                                  color: ThemeColor.lighter_grey, height: 1, width: double.infinity,
                                )
                              )
                            ],
                          ),
                          SizedBox(height: 20,),
                          Text('Username or Email Address', style: ThemeTextStyle.robotoB.apply(
                            fontSizeDelta: 1, color: ThemeColor.black1
                          )),
                          SizedBox(height: 10,),
                          TextField(
                            onChanged: (text) {},
                            onEditingComplete: () => FocusScope.of(context).requestFocus(_passwordFocus),
                            keyboardType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.next,
                            style: ThemeTextStyle.robotoR.apply(fontSizeDelta: -2),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: ThemeColor.lighter_grey,
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: ThemeColor.lighter_grey,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(5)),
                              ),
                              contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: ThemeColor.lighter_grey, width: 1),
                                borderRadius: BorderRadius.all(Radius.circular(5)),
                              ),
                            ),
                          ),
                          SizedBox(height: 20,),
                          Row(
                            children: <Widget>[
                              Text('Password', style: ThemeTextStyle.robotoB.apply(
                                fontSizeDelta: 1, color: ThemeColor.black1
                              )),
                              Spacer(),
                              Text('Forgot password?', style: ThemeTextStyle.robotoR.apply(
                                color: ThemeColor.google_blue
                              )),
                            ],
                          ),
                          SizedBox(height: 10,),
                          TextField(
                            onChanged: (text) {},
                            obscureText: true,
                            onEditingComplete: () => FocusScope.of(context).requestFocus(FocusNode()),
                            keyboardType: TextInputType.text,
                            textInputAction: TextInputAction.done,
                            style: ThemeTextStyle.robotoR.apply(fontSizeDelta: -2),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: ThemeColor.lighter_grey,
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: ThemeColor.lighter_grey,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(5)),
                              ),
                              contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: ThemeColor.lighter_grey, width: 1),
                                borderRadius: BorderRadius.all(Radius.circular(5)),
                              ),
                            )
                          ),
                          SizedBox(height: 20),
                          InkWell(
                            onHover: (isHover) => setState(() => _bgColorSignin = isHover ? ThemeColor.dribbble_pink_dark : ThemeColor.dribbble_pink),
                            child: Parent(
                              gesture: Gestures()..onTap(() {}),
                              style: ParentStyle()
                                ..borderRadius(all: 5)
                                ..padding(all: 15)
                                ..width(double.infinity)
                                ..background.color(_bgColorSignin)
                                ..ripple(true),
                              child: Text('Sign In', textAlign: TextAlign.center, style: ThemeTextStyle.robotoM.apply(
                                color: Colors.white
                              ),),
                            ),
                          ),
                          SizedBox(height: 25,),
                          Align(
                            alignment: Alignment.center,
                            child: RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                text: 'Not a member? ',
                                style: ThemeTextStyle.robotoR,
                                children: [
                                  TextSpan(
                                    text: 'Sign up now',
                                    style: ThemeTextStyle.robotoR.apply(
                                      color: ThemeColor.google_blue
                                    )
                                  )
                                ]
                              )
                            ),
                          ),
                          SizedBox(height: 30,)
                        ]
                      ),
                    )
                  )
                ],
              ),
            ),
          )
        )
      ]
    );
  }

}


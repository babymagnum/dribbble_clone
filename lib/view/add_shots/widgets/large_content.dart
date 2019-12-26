import 'package:division/division.dart';
import 'package:dribbble_clone/core/helper/responsive_layout.dart';
import 'package:dribbble_clone/core/theme/theme_color.dart';
import 'package:dribbble_clone/core/theme/theme_text_style.dart';
import 'package:flutter/material.dart';

class LargeContent extends StatefulWidget {
  @override
  _LargeContentState createState() => _LargeContentState();
}

class _LargeContentState extends State<LargeContent> {

  @override
  Widget build(BuildContext context) {

    final _screenSize = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: _screenSize.width * (ResponsiveLayout.isLargeScreen(context) ? 0.05 : ResponsiveLayout.isMediumScreen(context) ? 0.025 : 0.01)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 20,),
                  Parent(
                    style: ParentStyle()
                      ..border(all: 1, color: ThemeColor.lighter_grey)
                      ..borderRadius(all: 5),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: Row(
                                  children: <Widget>[
                                    Icon(Icons.image, size: 30, color: ThemeColor.lighter_grey,),
                                    SizedBox(width: 10,),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text('One high resolution image', style: ThemeTextStyle.robotoR.apply(
                                            color: ThemeColor.black1, fontSizeDelta: -2
                                          )),
                                          SizedBox(height: 2,),
                                          Text('PNG, JPG, GIF + Cropping', style: ThemeTextStyle.robotoR.apply(
                                            color: ThemeColor.dark_grey, fontSizeDelta: -2
                                          ),),
                                        ],
                                      ),
                                    )
                                  ],
                                )
                              ),
                              SizedBox(width: 10,),
                              Container(width: 1, height: 50, color: ThemeColor.lighter_grey,),
                              SizedBox(width: 10,),
                              Expanded(
                                child: Row(
                                  children: <Widget>[
                                    Parent(
                                      child: Icon(Icons.gif, size: 30, color: Colors.black54,),
                                      style: ParentStyle()
                                        ..background.color(ThemeColor.lighter_grey)
                                        ..borderRadius(all: 3)
                                        ..padding(horizontal: 4),
                                    ),
                                    SizedBox(width: 10,),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text('Animated GIF', style: ThemeTextStyle.robotoR.apply(
                                            color: ThemeColor.black1, fontSizeDelta: -2
                                          )),
                                          SizedBox(height: 2,),
                                          Text('400x300, 800x600 or 1600x1200', style: ThemeTextStyle.robotoR.apply(
                                            color: ThemeColor.dark_grey, fontSizeDelta: -2
                                          ),),
                                        ],
                                      ),
                                    )
                                  ],
                                )
                              ),
                              SizedBox(width: 10,),
                              Container(width: 1, height: 50, color: ThemeColor.lighter_grey,),
                              SizedBox(width: 10,),
                              Expanded(
                                child: Row(
                                  children: <Widget>[
                                    Icon(Icons.videocam, size: 30, color: ThemeColor.lighter_grey,),
                                    SizedBox(width: 10,),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Row(
                                            children: <Widget>[
                                              Text('Videos', style: ThemeTextStyle.robotoR.apply(
                                                color: ThemeColor.black1, fontSizeDelta: -2
                                              )),
                                              SizedBox(width: 5,),
                                              Parent(
                                                style: ParentStyle()
                                                  ..linearGradient(colors: [ThemeColor.orange, ThemeColor.soft_orange])
                                                  ..padding(vertical: 1, horizontal: 5)
                                                  ..borderRadius(all: 2),
                                                child: Text('PRO', style: ThemeTextStyle.robotoM.apply(
                                                  color: Colors.white, fontSizeDelta: -6
                                                )),
                                              )
                                            ],
                                          ),
                                          SizedBox(height: 2,),
                                          Text('PNG, JPG, GIF + Cropping', style: ThemeTextStyle.robotoR.apply(
                                            color: ThemeColor.dark_grey, fontSizeDelta: -2
                                          ),),
                                        ],
                                      ),
                                    )
                                  ],
                                )
                              )
                            ],
                          ),
                          SizedBox(height: 20,),
                          ResponsiveLayout.isLargeScreen(context) ?
                          Icon(Icons.cloud_upload, size: 200, color: ThemeColor.lighter_grey) :
                          ResponsiveLayout.isMediumScreen(context) ?
                          Icon(Icons.cloud_upload, size: 200, color: ThemeColor.lighter_grey) :
                          Container(),
                          Text('Drag and drop an image', style: ThemeTextStyle.robotoR.apply(
                            color: ResponsiveLayout.isLargeScreen(context) ? Colors.black87 : ThemeColor.black1,
                            fontSizeDelta: ResponsiveLayout.isLargeScreen(context) ? 10 : 5
                          )),
                          SizedBox(height: 7,),
                          RichText(
                            text: TextSpan(
                              text: 'or ',
                              style: ThemeTextStyle.robotoR.apply(
                                fontSizeDelta: ResponsiveLayout.isLargeScreen(context) ? 3 : 0
                              ),
                              children: <TextSpan> [
                                TextSpan(
                                  text: 'browse ',
                                  style: ThemeTextStyle.robotoR.apply(
                                    fontSizeDelta: ResponsiveLayout.isLargeScreen(context) ? 3 : 0, color: Colors.blue
                                  ),
                                ),
                                TextSpan(
                                  text: 'to choose a file',
                                  style: ThemeTextStyle.robotoR.apply(
                                    fontSizeDelta: ResponsiveLayout.isLargeScreen(context) ? 3 : 0
                                  ),
                                )
                              ]
                            )
                          ),
                          SizedBox(height: 7,),
                          Text('(1600x1200 or larger recommended, up to 10MB each)', style: ThemeTextStyle.robotoR.apply(
                            fontSizeDelta: -1, color: ThemeColor.dark_grey
                          )),
                          SizedBox(height: 20),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(width: 15,),
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 20,),
                  Text('Right side')
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}

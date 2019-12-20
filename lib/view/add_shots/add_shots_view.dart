import 'package:division/division.dart';
import 'package:dribbble_clone/core/helper/responsive_layout.dart';
import 'package:dribbble_clone/core/theme/theme_color.dart';
import 'package:dribbble_clone/core/theme/theme_text_style.dart';
import 'package:dribbble_clone/view/add_shots/widgets/large_content.dart';
import 'package:dribbble_clone/view/add_shots/widgets/medium_content.dart';
import 'package:flutter/material.dart';

class AddShotsView extends StatefulWidget {
  @override
  _AddShotsViewState createState() => _AddShotsViewState();
}

class _AddShotsViewState extends State<AddShotsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black87.withOpacity(0.9),
        title: Row(
          children: <Widget>[
            SizedBox(width: 10,),
            Text('Dribbble', style: ThemeTextStyle.ubuntuM.apply(
              color: ThemeColor.dark_grey
            )),
            Expanded(
              child: Text(ResponsiveLayout.isLargeScreen(context) ? 'Publish Shot' : '', textAlign: TextAlign.center, style: ThemeTextStyle.ubuntuM.apply(
                color: Colors.white, fontSizeDelta: 5
              ))
            ),
            Text('Help', style: ThemeTextStyle.ubuntuR.apply(
              color: ThemeColor.dark_grey
            ))
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ResponsiveLayout.isLargeScreen(context) ?
            LargeContent() :
            MediumContent(),
          ),
          Container(
            width: double.infinity, height: 1, color: ThemeColor.lighter_grey,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              children: <Widget>[
                Parent(
                  style: ParentStyle()
                    ..border(all: 1, color: Colors.black26)
                    ..padding(all: 10)
                    ..ripple(true)
                    ..borderRadius(all: 7)
                    ..background.color(Colors.white),
                  child: Text('Cancel', style: ThemeTextStyle.ubuntuR),
                ),
                ResponsiveLayout.isLargeScreen(context) ?
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Don't have an invite? Skip the wait.", style: ThemeTextStyle.robotoR.apply(
                        fontSizeDelta: -2
                      )),
                      SizedBox(width: 3,),
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
                ) :
                Spacer(),
                Parent(
                  style: ParentStyle()
                    ..background.color(ThemeColor.pink)
                    ..ripple(true)
                    ..borderRadius(all: 7)
                    ..padding(all: 10),
                  child: Text('Publish to Dribbble Draft', style: ThemeTextStyle.ubuntuR.apply(
                    color: Colors.white, fontSizeDelta: -2
                  )),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

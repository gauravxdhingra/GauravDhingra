import 'package:flutter/material.dart';
import 'package:flutter_brand_icons/flutter_brand_icons.dart';
import 'package:github_portfolio/responsive_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class GooglePlay extends StatelessWidget {
  const GooglePlay({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 30.0),
        child: FlatButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          onPressed: () async {
            launch(
              'https://play.google.com/store/apps/dev?id=5810381726891584413',
            );
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(BrandIcons.googleplay),
              SizedBox(
                width: 10,
              ),
              Text(
                "Find My Work On Google Play",
                style: TextStyle(),
                overflow: TextOverflow.visible,
                textScaleFactor: 1.4,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

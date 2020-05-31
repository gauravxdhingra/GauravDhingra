import 'package:flutter/material.dart';
import 'package:flutter_brand_icons/flutter_brand_icons.dart';
import 'package:github_portfolio/pages/coding_activity_page.dart';
import 'package:github_portfolio/responsive_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class DevStats extends StatelessWidget {
  const DevStats({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 30.0),
        child: FlatButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          onPressed: () async {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => CodingActivityPage()));
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.code),
              SizedBox(
                width: 10,
              ),
              Text(
                "Development Stats",
                style: TextStyle(),
                overflow: TextOverflow.visible,
                textScaleFactor: 1.2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

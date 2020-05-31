import 'package:flutter/material.dart';
import 'package:flutter_brand_icons/flutter_brand_icons.dart';
import 'package:url_launcher/url_launcher.dart';

import './nav_button.dart';
import '../responsive_widget.dart';
// import '../profile_page.dart';

class SocialInfo extends StatelessWidget {
  List<Widget> socialMediaWidgets() {
    return [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5),
        child: NavButton(
          icon: BrandIcons.github,
          text: "GitHub",
          onPressed: () {
            launch('https://github.com/gauravxdhingra');
          },
          color: Colors.white,
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5),
        child: NavButton(
          icon: BrandIcons.linkedin,
          text: "LinkedIn",
          onPressed: () {
            launch("https://www.linkedin.com/in/gauravxdhingra/");
          },
          color: Colors.white,
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5),
        child: NavButton(
          icon: BrandIcons.instagram,
          text: "Instagram",
          onPressed: () {
            launch("https://www.instagram.com/gauravxdhingra/");
          },
          color: Colors.white,
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5),
        child: NavButton(
          icon: BrandIcons.facebook,
          text: "Facebook",
          onPressed: () {
            launch("https://www.facebook.com/gauravxdhingra");
          },
          color: Colors.white,
        ),
      ),
    ];
  }

  Widget copyRightText() => Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Made with ❤ using Flutter",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white.withOpacity(0.8),
              ),
            ),
          ),
          Text(
            "Gaurav Dhingra ©️2020",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white.withOpacity(0.8),
            ),
          ),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: socialMediaWidgets(),
          ),
          copyRightText(),
        ],
      ),
      smallScreen: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          ...socialMediaWidgets(),
          SizedBox(
            height: 40,
          ),
          copyRightText(),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_brand_icons/flutter_brand_icons.dart';
import 'package:url_launcher/url_launcher.dart';

import 'responsive_widget.dart';
import 'widgets/nav_header.dart';
import 'widgets/profile_info.dart';
import 'widgets/social_info.dart';
// import 'widgets/gaurav.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Scaffold(
        backgroundColor: Colors.black,
        appBar: ResponsiveWidget.isSmallScreen(context)
            ? AppBar(
                title: Text(
                  'gauravxdhingra',
                  textScaleFactor: 1.5,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                elevation: 5,
                backgroundColor: Colors.black,
              )
            : null,
        drawer: ResponsiveWidget.isSmallScreen(context)
            ? Drawer(
                elevation: 5,
                child: ListView(
                  padding: EdgeInsets.all(20),
                  children: <Widget>[
                    ListTile(
                      title: Text(
                        'CONNECT WITH ME',
                        textScaleFactor: 1.5,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text('Social Platforms'),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        child: Icon(BrandIcons.github),
                      ),
                      title: Text('GitHub'),
                      onTap: () {
                        launch('https://github.com/gauravxdhingra');
                      },
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        child: Icon(BrandIcons.linkedin),
                      ),
                      title: Text('LinkedIn'),
                      onTap: () {
                        launch("https://www.linkedin.com/in/gauravxdhingra/");
                      },
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        child: Icon(
                          BrandIcons.instagram,
                        ),
                      ),
                      title: Text('Instagram'),
                      onTap: () {
                        launch("https://www.instagram.com/gauravxdhingra/");
                      },
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        child: Icon(
                          BrandIcons.facebook,
                        ),
                      ),
                      title: Text('Facebook'),
                      onTap: () {
                        launch("https://www.facebook.com/gauravxdhingra");
                      },
                    ),
                  ],
                ),
              )
            : null,
        body: SingleChildScrollView(
          child: AnimatedPadding(
            padding: EdgeInsets.all(
              MediaQuery.of(context).size.height * 0.1,
            ),
            child: ResponsiveWidget(
              largeScreen: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  NavHeader(navButtons: navButtons()),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                  ProfileInfo(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.2,
                  ),
                  SocialInfo(),
                ],
              ),
            ),
            duration: Duration(seconds: 1),
          ),
        ),
      ),
    );
  }

  List<Widget> navButtons() => [
        // NavButton(
        //   text: "about",
        //   onPressed: () {},
        // ),
        // NavButton(
        //   text: "work",
        //   onPressed: () {},
        // ),
        // NavButton(
        //   text: "contact",
        //   onPressed: () {},
        // ),
      ];
}




import 'package:flutter/material.dart';
import 'package:flutter_brand_icons/flutter_brand_icons.dart';
import 'package:github_portfolio/pages/coding_activity_page.dart';
import 'package:url_launcher/url_launcher.dart';

import 'responsive_widget.dart';
import 'widgets/nav_button.dart';
import 'widgets/nav_header.dart';
import 'widgets/profile_info.dart';
import 'widgets/social_info.dart';
import 'widgets/projects.dart';
import 'widgets/google_play.dart';
// import 'widgets/nav_button.dart';
import 'widgets/dev_stats_button.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Scaffold(
        body: SingleChildScrollView(
          child: AnimatedPadding(
            child: ResponsiveWidget(
              largeScreen: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  NavHeader(navButtons: navButtons(context)),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                  ProfileInfo(),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.2),
                  if (ResponsiveWidget.isLargeScreen(context))
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        DevStats(),
                        GooglePlay(),
                      ],
                    ),
                  if (ResponsiveWidget.isSmallScreen(context)) DevStats(),
                  if (ResponsiveWidget.isSmallScreen(context)) GooglePlay(),
                  SocialInfo(),
                  Projects(),
                ],
              ),
            ),
            duration: Duration(seconds: 1),
            padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.1),
          ),
        ),
        appBar: ResponsiveWidget.isSmallScreen(context) ? buildAppBar() : null,
        drawer: ResponsiveWidget.isSmallScreen(context)
            ? buildDrawer(context)
            : null,
        backgroundColor: Colors.black,
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Text(
        'gauravxdhingra',
        textScaleFactor: 1.5,
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      elevation: 5,
      backgroundColor: Colors.black,
    );
  }

  Drawer buildDrawer(context) {
    return Drawer(
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
          ListTile(),
          ListTile(
            title: Text(
              'MY PROJECTS',
              textScaleFactor: 1.5,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text('Available On Google Play'),
          ),
          ListTile(
            leading: CircleAvatar(
              child: Image.asset(
                "assets/project_icons/yamp.png",
                fit: BoxFit.contain,
                color: Colors.white,
                // colorBlendMode: BlendMode.xor,
              ),
            ),
            title: Text('YAMP'),
            subtitle: Text("Yet Another Music Player"),
            onTap: () {
              launch(
                'https://play.google.com/store/apps/details?id=com.gauravxdhingra.yampmusic',
              );
            },
          ),
          ListTile(
            leading: CircleAvatar(
              child: Image.asset(
                "assets/project_icons/recipetap.png",
                fit: BoxFit.contain,
                color: Colors.white,
              ),
            ),
            title: Text('RecipeTap'),
            subtitle: Text("Search Recipes From Ingredients"),
            onTap: () {
              launch(
                'https://play.google.com/store/apps/details?id=com.gauravxdhingra.recipetap',
              );
            },
          ),
          ListTile(),
          ListTile(
            // leading: CircleAvatar(
            //   child: Icon(Icons.code),
            // ),
            title: Text(
              'Development Stats'.toUpperCase(),
              textScaleFactor: 1.5,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text("Tap for development stats"),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CodingActivityPage()));
            },
          ),
        ],
      ),
    );
  }

  List<Widget> navButtons(context) => [
        NavButton(
          icon: BrandIcons.github,
          text: "Development Stats",
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => CodingActivityPage()));
          },
        ),
        //   NavButton(
        //     text: "work",
        //     onPressed: () {},
        //   ),
        //   NavButton(
        //     text: "contact",
        //     onPressed: () {},
        //   ),
      ];
}

import 'package:flutter/material.dart';
import 'package:flutter_brand_icons/flutter_brand_icons.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:github_portfolio/profile_page.dart';
import 'package:github_portfolio/widgets/social_info.dart';
import 'package:url_launcher/url_launcher.dart';

import '../responsive_widget.dart';

class CodingActivityPage extends StatelessWidget {
  const CodingActivityPage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Scaffold(
        body: SingleChildScrollView(
          child: AnimatedPadding(
            child: ResponsiveWidget(
              largeScreen: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // NavHeader(navButtons: navButtons()),
                  ResponsiveWidget(
                    largeScreen: Row(
                      mainAxisAlignment: ResponsiveWidget.isSmallScreen(context)
                          ? MainAxisAlignment.center
                          : MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        if (!ResponsiveWidget.isSmallScreen(context))
                          Row(
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              GestureDetector(
                                child: Text(
                                  "GD".toUpperCase(),
                                  textScaleFactor: 2.5,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                onTap: () {
                                  Navigator.pop(context);
                                },
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              AnimatedContainer(
                                duration: Duration(seconds: 1),
                                height: 8,
                                width: 8,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.orange,
                                ),
                              ),
                            ],
                          ),
                      ],
                    ),
                  ),
                  if (ResponsiveWidget.isSmallScreen(context))
                    SizedBox(
                        height: MediaQuery.of(context).size.height * 0.004),
                  if (ResponsiveWidget.isLargeScreen(context))
                    SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                  // ProfileInfo(),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      "Development Stats".toUpperCase(),
                      textScaleFactor:
                          ResponsiveWidget.isSmallScreen(context) ? 2 : 1.5,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      "Tap To Know More".toUpperCase(),
                      textScaleFactor:
                          ResponsiveWidget.isSmallScreen(context) ? 0.7 : 0.7,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                  ResponsiveWidget(
                    largeScreen: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            GestureDetector(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.network(
                                  "https://wakatime.com/share/@3cefc317-0f86-48de-b7b3-b7945ee963da/db1b094d-6453-48ee-b807-415ecb45c88d.png",
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                ),
                              ),
                              onTap: () {
                                launch(
                                    "https://wakatime.com/share/@3cefc317-0f86-48de-b7b3-b7945ee963da/db1b094d-6453-48ee-b807-415ecb45c88d.png");
                              },
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text("WakaTime Activity")
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            GestureDetector(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.network(
                                  "https://grass-graph.moshimo.works/images/gauravxdhingra.png",
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                ),
                              ),
                              onTap: () {
                                launch("https://github.com/gauravxdhingra");
                              },
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text("GitHub Contributions")
                          ],
                        ),
                      ],
                    ),
                    smallScreen: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        GestureDetector(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.network(
                              "https://wakatime.com/share/@3cefc317-0f86-48de-b7b3-b7945ee963da/db1b094d-6453-48ee-b807-415ecb45c88d.png",
                            ),
                          ),
                          onTap: () {
                            launch(
                                "https://wakatime.com/share/@3cefc317-0f86-48de-b7b3-b7945ee963da/db1b094d-6453-48ee-b807-415ecb45c88d.png");
                          },
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Text("WakaTime Activity"),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.1,
                        ),
                        GestureDetector(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.network(
                              "https://grass-graph.moshimo.works/images/gauravxdhingra.png",
                            ),
                          ),
                          onTap: () {
                            launch("https://github.com/gauravxdhingra");
                          },
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Text("GitHub Contributions"),
                      ],
                    ),
                  ),
                  // SizedBox(height: MediaQuery.of(context).size.height * 0.2),
                  // GooglePlay(),
                  if (ResponsiveWidget.isSmallScreen(context))
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      "* Updated Every 24 Hours",
                      textAlign: TextAlign.end,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.2,
                  ),
                  SocialInfo(),
                  // Projects(),
                ],
              ),
            ),
            duration: Duration(seconds: 1),
            padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.1),
          ),
        ),
        appBar: ResponsiveWidget.isSmallScreen(context)
            ? buildAppBar(context)
            : null,
        drawer: ResponsiveWidget.isSmallScreen(context)
            ? buildDrawer(context)
            : null,
        backgroundColor: Colors.black,
      ),
    );
  }

  AppBar buildAppBar(context) {
    return AppBar(
      title: GestureDetector(
        child: Text(
          'gauravxdhingra',
          textScaleFactor: 1.5,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        onTap: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => ProfilePage()));
        },
      ),
      elevation: 5,
      backgroundColor: Colors.black,
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios),
        onPressed: () {
          Navigator.pop(
              context, MaterialPageRoute(builder: (context) => ProfilePage()));
        },
      ),
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
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white70),
            ),
            subtitle: Text("Tap For Development Stats"),
            // onTap: () {
            //   Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //           builder: (context) => CodingActivityPage()));
            // },
          ),
        ],
      ),
    );
  }
}

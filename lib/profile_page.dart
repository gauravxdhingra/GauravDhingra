import 'package:flutter/material.dart';
import 'package:flutter_brand_icons/flutter_brand_icons.dart';
import 'package:github_portfolio/responsive_widget.dart';
import 'package:url_launcher/url_launcher.dart';

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

class NavHeader extends StatelessWidget {
  final List<Widget> navButtons;

  const NavHeader({Key key, this.navButtons}) : super(key: key);

  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: ResponsiveWidget.isSmallScreen(context)
            ? MainAxisAlignment.center
            : MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          if (!ResponsiveWidget.isSmallScreen(context)) Gaurav(),
//          Spacer(),
          if (!ResponsiveWidget.isSmallScreen(context))
            Row(
              children: navButtons,
            )
        ],
      ),
    );
  }
}

class Gaurav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          "GD",
          textScaleFactor: 2.5,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
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
    );
  }
}

class NavButton extends StatelessWidget {
  final text;
  final onPressed;
  final Color color;
  final IconData icon;

  const NavButton(
      {Key key,
      @required this.text,
      @required this.onPressed,
      this.icon,
      this.color = Colors.orange})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      // color: Colors.white,
      highlightElevation: 10,
      // highlightColor: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(icon),
          SizedBox(
            width: 7,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Text(
              text,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),
      borderSide: BorderSide(
        style: BorderStyle.solid,
        width: 2,
        color: color,
      ),
      onPressed: onPressed,
      highlightedBorderColor: color,
    );
  }
}

class ProfileInfo extends StatelessWidget {
  profileImage(context) => Container(
        height: ResponsiveWidget.isSmallScreen(context)
            ? MediaQuery.of(context).size.height * 0.25
            : MediaQuery.of(context).size.width * 0.25,
        width: ResponsiveWidget.isSmallScreen(context)
            ? MediaQuery.of(context).size.height * 0.25
            : MediaQuery.of(context).size.width * 0.25,
        decoration: BoxDecoration(
          backgroundBlendMode: BlendMode.luminosity,
          color: Colors.deepOrange,
//            borderRadius: BorderRadius.circular(40),
          shape: BoxShape.circle,
          image: DecorationImage(
            image: NetworkImage(
              "https://scontent.fdel1-4.fna.fbcdn.net/v/t1.0-9/p960x960/53792671_431528817654025_7064724171124637696_o.jpg?_nc_cat=100&_nc_sid=85a577&_nc_ohc=oHwArTjA6hIAX9JIpXL&_nc_ht=scontent.fdel1-4.fna&_nc_tp=6&oh=2ab00406a8d35258299842f7256c91d7&oe=5EC73D5B",
            ),
            alignment: Alignment.center,
            fit: BoxFit.cover,
          ),
        ),
      );

  final profileData = Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        "Hi there! My name is",
        textScaleFactor: 2,
        style: TextStyle(
          color: Colors.deepOrangeAccent,
        ),
      ),
      Text(
        "Gaurav\nDhingra",
        textScaleFactor: 4,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Text(
        "A Student At Bhagwan Parshuram Institute of Technology, \nNew Delhi (IN).\n",
        softWrap: true,
        textScaleFactor: 1.5,
        overflow: TextOverflow.visible,
        style: TextStyle(color: Colors.white70),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          RaisedButton(
            shape: StadiumBorder(),
            child: Text("Resume"),
            color: Colors.red,
            onPressed: () {
              launch(
                'https://drive.google.com/file/d/1OuP_XbRZNmDaI_lntCVtFqnmKiBfEcRv/view?usp=sharing',
              );
            },
            padding: EdgeInsets.all(10),
          ),
          SizedBox(
            width: 20,
          ),
          OutlineButton(
            borderSide: BorderSide(
              color: Colors.white,
              width: 5,
            ),
            shape: StadiumBorder(),
            child: Text("Say Hi!"),
            color: Colors.red,
            onPressed: () {
              launch(
                "https://www.linkedin.com/in/gauravxdhingra/",
              );
            },
            padding: EdgeInsets.all(10),
          )
        ],
      ),
      SizedBox(
        height: 30,
      ),
      Container(
        // height: 350,
        width: 500,
        child: Text(
          "An Innovative and Enthusiastic Developer with a drive to build "
          "useful software for the people and the community, carrying a strong "
          "sense of Stunning User Interface and a Delightful User Experience to "
          "make the product highly intuitive and easy to use for the end user.",
          softWrap: true,
          overflow: TextOverflow.visible,
          textScaleFactor: 1.5,
          style: TextStyle(color: Colors.white70),
        ),
      ),
      SizedBox(
        height: 20,
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[profileImage(context), profileData],
      ),
      smallScreen: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          profileImage(context),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: profileData,
          )
        ],
      ),
    );
  }
}

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

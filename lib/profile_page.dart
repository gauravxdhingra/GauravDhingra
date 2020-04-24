import 'package:flutter/material.dart';
import 'package:github_portfolio/responsive_widget.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.black,
        ),
        drawer: ResponsiveWidget.isSmallScreen(context)
            ? Drawer(
                child: ListView(
                  padding: EdgeInsets.all(20),
                  children: <Widget>[],
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
            ),,
            duration: Duration(seconds: 1),
          ),
        ),
      ),
    );
  }
}

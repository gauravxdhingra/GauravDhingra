import 'package:flutter/material.dart';

import '../responsive_widget.dart';

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
            image: AssetImage("assets/gaurav.jpg"),
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
        textScaleFactor: 3.5,
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
              
                static void launch(String s) {}
}

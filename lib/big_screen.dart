import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_web/responsive_widget.dart';

class BigScreen extends StatefulWidget {
  @override
  _BigScreenState createState() => _BigScreenState();
}

class _BigScreenState extends State<BigScreen> {
  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var containerWidth = 13 / 100 * deviceWidth;

    var deviceMargin = ResponsiveWidget.isMediumScreen(context)
        ? (5 / 100 * deviceWidth)
        : containerWidth;

    var mainAxisAlignmentResponsive = ResponsiveWidget.isMediumScreen(context)
        ? MainAxisAlignment.center
        : MainAxisAlignment.start;

    var crossAxisAlignmentResponsive = ResponsiveWidget.isMediumScreen(context)
        ? CrossAxisAlignment.center
        : CrossAxisAlignment.start;

    var textAlignResponsive = ResponsiveWidget.isMediumScreen(context)
        ? TextAlign.center
        : TextAlign.left;

    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Container(
          margin: EdgeInsets.only(left: deviceMargin, right: deviceMargin),
          child: Padding(
            padding: EdgeInsets.only(top: 32.0),
            child: Stack(
              children: [
                _bottomLogo(context),
                Align(
                  alignment: Alignment.topLeft,
                  child: Image.asset(
                    "asset/img/dicoding.png",
                  ),
                ),
                Align(
                  alignment: ResponsiveWidget.isMediumScreen(context)
                      ? Alignment.topCenter
                      : Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 150),
                    child: Column(
                      crossAxisAlignment: crossAxisAlignmentResponsive,
                      children: [
                        Text(
                          "Bangun Karirmu Sebagai\nDeveloper Profesional",
                          textAlign: textAlignResponsive,
                          style: TextStyle(
                            fontSize: 40,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 40.0,
                            bottom: 30.0,
                          ),
                          child: Container(
                            width: (deviceWidth - deviceMargin) /
                                (ResponsiveWidget.isMediumScreen(context)
                                    ? 1.3
                                    : 2),
                            child: Text(
                              "Visi dicoding adalah menjadi jaringan terbaik untuk developer di Indonesia. Dicoding memiliki dua misi utama. Pertama adalah membantu developer untuk menjadi entrepreneur yang mampu mengembangkan produk kelas dunia. Kedua adalah melahirkan talent digital sebanyak mungkin untuk industry IT di Indonesia.",
                              style: TextStyle(
                                  fontSize: 17, color: Colors.black54),
                              textAlign: textAlignResponsive,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: mainAxisAlignmentResponsive,
                          children: [
                            _pilarItem("asset/img/home-thumb-challenge.png"),
                            _pilarItem("asset/img/home-thumb-event.png"),
                            _pilarItem("asset/img/home-thumb-academy.png"),
                            _pilarItem("asset/img/home-thumb-job.png"),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      _menuItem("Academy"),
                      _menuItem("Challenge"),
                      _menuItem("Event"),
                      _menuItem("Job"),
                      _menuItem("Developer"),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 20.0,
                          right: 20.0,
                        ),
                        child: Image.asset(
                          "asset/img/profil.png",
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Padding _menuItem(String title) {
  return Padding(
    padding: EdgeInsets.only(
      left: 20.0,
      right: 20.0,
    ),
    child: Text(
      title,
      style: TextStyle(
        height: 3.2,
        fontSize: 17,
      ),
    ),
  );
}

Widget _pilarItem(String path) {
  return Padding(
    padding: const EdgeInsets.only(
      right: 20.0,
    ),
    child: Image.asset(
      path,
    ),
  );
}

Widget _bottomLogo(BuildContext context) {
  return Align(
    alignment: Alignment.bottomRight,
    child: Image.asset(
      "asset/img/bottom.png",
      scale: ResponsiveWidget.isLargeScreen(context) ? 1.2 : 0,
    ),
  );
}

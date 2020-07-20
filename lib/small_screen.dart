import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web/constants.dart';

class SmallScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          'Dicoding Home',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.black54,
        ),
        actions: [
          Image.asset('asset/img/profil.png'),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            _menuTile('Academy'),
            _menuTile('Challenge'),
            _menuTile('Event'),
            _menuTile('Job'),
            _menuTile('Developer'),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              kDicodingHeadline,
              style: Theme.of(context)
                  .textTheme
                  .headline4
                  .copyWith(color: Colors.black),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
            child: Text(
              kDicodingSubHeadline,
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _pilarItem("asset/img/home-thumb-challenge.png"),
                _pilarItem("asset/img/home-thumb-event.png"),
                _pilarItem("asset/img/home-thumb-academy.png"),
                _pilarItem("asset/img/home-thumb-job.png"),
              ],
            ),
          ),
          Image.asset(
            "asset/img/bottom.png",
            scale: 2,
          ),
        ],
      ),
    );
  }
}

Widget _menuTile(String title) {
  return ListTile(
    title: Text(title),
    trailing: Icon(Icons.arrow_forward_ios),
  );
}

Widget _pilarItem(String path) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8.0),
    child: Image.asset(path),
  );
}

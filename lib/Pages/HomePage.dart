import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:chromecast/main.dart';

class ChoicePage extends StatelessWidget {
  const ChoicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            toolbarHeight: 80,
            backgroundColor: Theme.of(context).primaryColor,
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.settings),
                onPressed: () {},
                color: Colors.black,
              ),
              IconButton(
                icon: const Icon(Icons.cast),
                onPressed: () {},
                color: Colors.black,
              ),
            ],
            shadowColor: Colors.white,
          ),
          body: Column(
            children: <Widget>[
              _nameOfDevice(),
              _buttonUpdate('Upgrade to Unlock All  Features', () {}),
              _firstRowContainer(),
              _twiceRowContainer(),
              _thirdRowContainer(),
            ],
          )),
    );
  }
}

Widget _buttonUpdate(String text, void func()) {
  return RaisedButton(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
    color: Colors.blueAccent,
    splashColor: Colors.white,
    highlightColor: Colors.lightBlue,
    child: Text(
      text,
      style: const TextStyle(
          fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),
    ),
    onPressed: () {},
  );
}

Widget _nameOfDevice() {
  return Container(
    alignment: Alignment.topLeft,
    child: const Text(
      'No connection device',
      style: TextStyle(fontSize: 32),
    ),
  );
}

Widget _firstRowContainer() {
  return Row(
    children: <Widget>[
      InkWell(
        child: Container(
          child: Stack(
            children: const <Widget>[
              Icon(
                Icons.photo_library_outlined,
                size: 40,
              ),
              Positioned(
                top: 50,
                left: 5,
                child: Text(
                  'Gallery photos',
                  style: TextStyle(fontSize: 18),
                ),
              )
            ],
          ),
          height: 130,
          width: 180,
          margin: const EdgeInsets.only(left: 14, right: 20, top: 30),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.yellow,
              border: Border.all(
                color: Colors.yellow,
                width: 2,
              ),
              boxShadow: const [
                BoxShadow(
                  spreadRadius: 2,
                  color: Colors.black12,
                  offset: Offset(1, 1),
                  blurRadius: 2,
                ),
              ]),
        ),
        onTap: (){},
      ),
      InkWell(
        child: Container(
          child: Stack(
            children: const <Widget>[
              Icon(
                Icons.video_collection_outlined,
                size: 40,
              ),
              Positioned(
                top: 50,
                left: 5,
                child: Text(
                  'Gallery photos',
                  style: TextStyle(fontSize: 18),
                ),
              )
            ],
          ),
          height: 130,
          width: 180,
          margin: const EdgeInsets.only(
            top: 30,
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.green,
              border: Border.all(
                color: Colors.green,
                width: 2,
              ),
              boxShadow: const [
                BoxShadow(
                  spreadRadius: 2,
                  color: Colors.black12,
                  offset: Offset(1, 1),
                  blurRadius: 2,
                ),
              ]),
        ),
        onTap: (){},

      ),
    ],
  );
}

Widget _twiceRowContainer() {
  return Row(
    children: <Widget>[
      InkWell(
        child: Container(
          child: Stack(
            children: const <Widget>[
              Icon(
                Icons.video_call_outlined,
                size: 40,
              ),
              Positioned(
                top: 50,
                left: 5,
                child: Text(
                  'Video from camera',
                  style: TextStyle(fontSize: 18),
                ),
              )
            ],
          ),
          height: 130,
          width: 180,
          margin: const EdgeInsets.only(left: 15, right: 20, top: 50),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.lightBlue,
              border: Border.all(
                color: Colors.lightBlue,
                width: 2,
              ),
              boxShadow: const [
                BoxShadow(
                  spreadRadius: 2,
                  color: Colors.black12,
                  offset: Offset(1, 1),
                  blurRadius: 2,
                ),
              ]),
        ),
        onTap: (){},

      ),
      InkWell(
        child: Container(
          child: Stack(
            children: const <Widget>[
              Icon(
                Icons.mobile_screen_share_outlined,
                size: 40,
              ),
              Positioned(
                top: 50,
                left: 5,
                child: Text(
                  'Screen content',
                  style: TextStyle(fontSize: 18),
                ),
              )
            ],
          ),
          height: 130,
          width: 180,
          margin: const EdgeInsets.only(
            top: 50,
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.red,
              border: Border.all(
                color: Colors.red,
                width: 2,
              ),
              boxShadow: const [
                BoxShadow(
                  spreadRadius: 2,
                  color: Colors.black12,
                  offset: Offset(1, 1),
                  blurRadius: 2,
                ),
              ]),
        ),
        onTap: (){},

      ),
    ],
  );
}

Widget _thirdRowContainer() {
  return Row(
    children: <Widget>[
      InkWell(
        onTap: (){},
        child: Container(
          child: Stack(
            children: const <Widget>[
              Icon(
                Icons.public_sharp,
                size: 40,
              ),
              Positioned(
                top: 50,
                left: 5,
                child: Text(
                  'Cast video \nfrom URL',
                  style: TextStyle(fontSize: 18),
                ),
              )
            ],
          ),
          height: 130,
          width: 180,
          margin: const EdgeInsets.only(
            top: 50,
            left: 115,
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.blueAccent,
              border: Border.all(
                color: Colors.blueAccent,
                width: 2,

              ),
              boxShadow: const [
                BoxShadow(
                  spreadRadius: 2,
                  color: Colors.black12,
                  offset: Offset(1, 1),
                  blurRadius: 2,
                ),
              ]),
        ),
      ),
    ],
  );
}

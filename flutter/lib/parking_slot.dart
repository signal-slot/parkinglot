import 'package:flutter/material.dart';

class ParkingSlot extends StatelessWidget {
  ParkingSlot({super.key, required this.onAcceptTap, required this.onKey0Tap, required this.onKey1Tap, required this.onKey2Tap, required this.onKey3Tap, required this.onKey4Tap, required this.onKey5Tap, required this.onKey6Tap, required this.onKey7Tap, required this.onKey8Tap, required this.onKey9Tap, required this.onKeyCTap});

  void Function()? onAcceptTap;
  void Function()? onKey0Tap;
  void Function()? onKey1Tap;
  void Function()? onKey2Tap;
  void Function()? onKey3Tap;
  void Function()? onKey4Tap;
  void Function()? onKey5Tap;
  void Function()? onKey6Tap;
  void Function()? onKey7Tap;
  void Function()? onKey8Tap;
  void Function()? onKey9Tap;
  void Function()? onKeyCTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: Stack(
          children: [
            Positioned(
              height: 67,
              left: 129,
              top: 124,
              width: 543,
              child: Column(
                children: [
                  Text(
                    "駐車位置番号を入力してください", 
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontFamily: "SourceHanSans-Bold",
                      fontSize: 23.3333,
                      fontVariations: [FontVariation.weight(600)],
                      height: 1,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Stack(
                children: [
                  Positioned(
                    height: 50,
                    left: 431,
                    top: 204,
                    width: 88,
                    child: Material(
                      type: MaterialType.transparency,
                      child: Ink(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.99999),
                          gradient: LinearGradient(
                            begin: Alignment(0, 1),
                            colors: [
                              Color.fromARGB(255, 218, 218, 218),
                              Color.fromARGB(255, 255, 255, 255),
                            ],
                            end: Alignment(0, -1),
                            stops: [
                              0,
                              1,
                            ],
                          ),
                        ),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(5.99999),
                          onTap: onKey1Tap,
                          child: Stack(
                            children: [
                              Positioned(
                                height: 32,
                                left: 38,
                                top: 17,
                                width: 10,
                                child: Column(
                                  children: [
                                    Text(
                                      "1", 
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontFamily: "SourceHanSans-Medium",
                                        fontSize: 11.2031,
                                        fontVariations: [FontVariation.weight(600)],
                                        height: 1,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    height: 50,
                    left: 531,
                    top: 204,
                    width: 88,
                    child: Material(
                      type: MaterialType.transparency,
                      child: Ink(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.99999),
                          gradient: LinearGradient(
                            begin: Alignment(0, 1),
                            colors: [
                              Color.fromARGB(255, 218, 218, 218),
                              Color.fromARGB(255, 255, 255, 255),
                            ],
                            end: Alignment(0, -1),
                            stops: [
                              0,
                              1,
                            ],
                          ),
                        ),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(5.99999),
                          onTap: onKey2Tap,
                          child: Stack(
                            children: [
                              Positioned(
                                height: 32,
                                left: 39,
                                top: 17,
                                width: 10,
                                child: Column(
                                  children: [
                                    Text(
                                      "2", 
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontFamily: "SourceHanSans-Medium",
                                        fontSize: 11.2031,
                                        fontVariations: [FontVariation.weight(600)],
                                        height: 1,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    height: 50,
                    left: 633,
                    top: 204,
                    width: 88,
                    child: Material(
                      type: MaterialType.transparency,
                      child: Ink(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.99999),
                          gradient: LinearGradient(
                            begin: Alignment(0, 1),
                            colors: [
                              Color.fromARGB(255, 218, 218, 218),
                              Color.fromARGB(255, 255, 255, 255),
                            ],
                            end: Alignment(0, -1),
                            stops: [
                              0,
                              1,
                            ],
                          ),
                        ),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(5.99999),
                          onTap: onKey3Tap,
                          child: Stack(
                            children: [
                              Positioned(
                                height: 32,
                                left: 38,
                                top: 17,
                                width: 10,
                                child: Column(
                                  children: [
                                    Text(
                                      "3", 
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontFamily: "SourceHanSans-Medium",
                                        fontSize: 11.2031,
                                        fontVariations: [FontVariation.weight(600)],
                                        height: 1,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    height: 49,
                    left: 431,
                    top: 266,
                    width: 88,
                    child: Material(
                      type: MaterialType.transparency,
                      child: Ink(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.99999),
                          gradient: LinearGradient(
                            begin: Alignment(0, 1.02041),
                            colors: [
                              Color.fromARGB(255, 218, 218, 218),
                              Color.fromARGB(255, 255, 255, 255),
                            ],
                            end: Alignment(0, -0.979592),
                            stops: [
                              0,
                              1,
                            ],
                          ),
                        ),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(5.99999),
                          onTap: onKey4Tap,
                          child: Stack(
                            children: [
                              Positioned(
                                height: 32,
                                left: 38,
                                top: 17,
                                width: 10,
                                child: Column(
                                  children: [
                                    Text(
                                      "4", 
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontFamily: "SourceHanSans-Medium",
                                        fontSize: 11.2031,
                                        fontVariations: [FontVariation.weight(600)],
                                        height: 1,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    height: 49,
                    left: 531,
                    top: 266,
                    width: 88,
                    child: Material(
                      type: MaterialType.transparency,
                      child: Ink(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.99999),
                          gradient: LinearGradient(
                            begin: Alignment(0, 1.02041),
                            colors: [
                              Color.fromARGB(255, 218, 218, 218),
                              Color.fromARGB(255, 255, 255, 255),
                            ],
                            end: Alignment(0, -0.979592),
                            stops: [
                              0,
                              1,
                            ],
                          ),
                        ),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(5.99999),
                          onTap: onKey5Tap,
                          child: Stack(
                            children: [
                              Positioned(
                                height: 32,
                                left: 39,
                                top: 17,
                                width: 10,
                                child: Column(
                                  children: [
                                    Text(
                                      "5", 
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontFamily: "SourceHanSans-Medium",
                                        fontSize: 11.2031,
                                        fontVariations: [FontVariation.weight(600)],
                                        height: 1,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    height: 49,
                    left: 633,
                    top: 266,
                    width: 88,
                    child: Material(
                      type: MaterialType.transparency,
                      child: Ink(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.99999),
                          gradient: LinearGradient(
                            begin: Alignment(0, 1.02041),
                            colors: [
                              Color.fromARGB(255, 218, 218, 218),
                              Color.fromARGB(255, 255, 255, 255),
                            ],
                            end: Alignment(0, -0.979592),
                            stops: [
                              0,
                              1,
                            ],
                          ),
                        ),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(5.99999),
                          onTap: onKey6Tap,
                          child: Stack(
                            children: [
                              Positioned(
                                height: 32,
                                left: 38,
                                top: 17,
                                width: 10,
                                child: Column(
                                  children: [
                                    Text(
                                      "6", 
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontFamily: "SourceHanSans-Medium",
                                        fontSize: 11.2031,
                                        fontVariations: [FontVariation.weight(600)],
                                        height: 1,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    height: 48,
                    left: 431,
                    top: 329,
                    width: 88,
                    child: Material(
                      type: MaterialType.transparency,
                      child: Ink(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.99999),
                          gradient: LinearGradient(
                            begin: Alignment(0, 1),
                            colors: [
                              Color.fromARGB(255, 218, 218, 218),
                              Color.fromARGB(255, 255, 255, 255),
                            ],
                            end: Alignment(0, -1),
                            stops: [
                              0,
                              1,
                            ],
                          ),
                        ),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(5.99999),
                          onTap: onKey7Tap,
                          child: Stack(
                            children: [
                              Positioned(
                                height: 32,
                                left: 38,
                                top: 16,
                                width: 10,
                                child: Column(
                                  children: [
                                    Text(
                                      "7", 
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontFamily: "SourceHanSans-Medium",
                                        fontSize: 11.2031,
                                        fontVariations: [FontVariation.weight(600)],
                                        height: 1,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    height: 48,
                    left: 531,
                    top: 329,
                    width: 88,
                    child: Material(
                      type: MaterialType.transparency,
                      child: Ink(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.99999),
                          gradient: LinearGradient(
                            begin: Alignment(0, 1),
                            colors: [
                              Color.fromARGB(255, 218, 218, 218),
                              Color.fromARGB(255, 255, 255, 255),
                            ],
                            end: Alignment(0, -1),
                            stops: [
                              0,
                              1,
                            ],
                          ),
                        ),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(5.99999),
                          onTap: onKey8Tap,
                          child: Stack(
                            children: [
                              Positioned(
                                height: 32,
                                left: 39,
                                top: 16,
                                width: 10,
                                child: Column(
                                  children: [
                                    Text(
                                      "8", 
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontFamily: "SourceHanSans-Medium",
                                        fontSize: 11.2031,
                                        fontVariations: [FontVariation.weight(600)],
                                        height: 1,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    height: 48,
                    left: 633,
                    top: 329,
                    width: 88,
                    child: Material(
                      type: MaterialType.transparency,
                      child: Ink(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.99999),
                          gradient: LinearGradient(
                            begin: Alignment(0, 1),
                            colors: [
                              Color.fromARGB(255, 218, 218, 218),
                              Color.fromARGB(255, 255, 255, 255),
                            ],
                            end: Alignment(0, -1),
                            stops: [
                              0,
                              1,
                            ],
                          ),
                        ),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(5.99999),
                          onTap: onKey9Tap,
                          child: Stack(
                            children: [
                              Positioned(
                                height: 32,
                                left: 38,
                                top: 16,
                                width: 10,
                                child: Column(
                                  children: [
                                    Text(
                                      "9", 
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontFamily: "SourceHanSans-Medium",
                                        fontSize: 11.2031,
                                        fontVariations: [FontVariation.weight(600)],
                                        height: 1,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    height: 50,
                    left: 531,
                    top: 390,
                    width: 88,
                    child: Material(
                      type: MaterialType.transparency,
                      child: Ink(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.99999),
                          gradient: LinearGradient(
                            begin: Alignment(0, 1),
                            colors: [
                              Color.fromARGB(255, 218, 218, 218),
                              Color.fromARGB(255, 255, 255, 255),
                            ],
                            end: Alignment(0, -1),
                            stops: [
                              0,
                              1,
                            ],
                          ),
                        ),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(5.99999),
                          onTap: onKey0Tap,
                          child: Stack(
                            children: [
                              Positioned(
                                height: 32,
                                left: 39,
                                top: 17,
                                width: 10,
                                child: Column(
                                  children: [
                                    Text(
                                      "0", 
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontFamily: "SourceHanSans-Medium",
                                        fontSize: 11.2031,
                                        fontVariations: [FontVariation.weight(600)],
                                        height: 1,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    height: 50,
                    left: 633,
                    top: 390,
                    width: 88,
                    child: Material(
                      type: MaterialType.transparency,
                      child: Ink(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.99999),
                          gradient: LinearGradient(
                            begin: Alignment(0, 1),
                            colors: [
                              Color.fromARGB(255, 218, 218, 218),
                              Color.fromARGB(255, 255, 255, 255),
                            ],
                            end: Alignment(0, -1),
                            stops: [
                              0,
                              1,
                            ],
                          ),
                        ),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(5.99999),
                          onTap: onKeyCTap,
                          child: Stack(
                            children: [
                              Positioned(
                                height: 27,
                                left: 22,
                                top: 19,
                                width: 41,
                                child: Column(
                                  children: [
                                    Text(
                                      "クリア", 
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontFamily: "SourceHanSans-Medium",
                                        fontSize: 9.33333,
                                        fontVariations: [FontVariation.weight(600)],
                                        height: 1,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Stack(
                children: [
                  Positioned(
                    height: 232,
                    left: 43,
                    top: 206,
                    width: 358,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(255, 255, 255, 255),
                        border: Border.all(
                          color: Color.fromARGB(255, 111, 111, 111),
                          width: 6,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    height: 46,
                    left: 107,
                    top: 334,
                    width: 47,
                    child: Column(
                      children: [
                        Text(
                          "NO.", 
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontFamily: "SourceHanSans-Medium",
                            fontSize: 16,
                            fontVariations: [FontVariation.weight(600)],
                            height: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    height: 90,
                    left: 175,
                    top: 277,
                    width: 71,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        border: Border.all(
                          color: Color.fromARGB(255, 0, 0, 0),
                          width: 1,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    height: 88,
                    left: 197,
                    top: 298,
                    width: 26,
                    child: Column(
                      children: [
                        Text(
                          "1", 
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontFamily: "SourceHanSans-Medium",
                            fontSize: 30.3777,
                            fontVariations: [FontVariation.weight(600)],
                            height: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    height: 90,
                    left: 265,
                    top: 277,
                    width: 71,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        border: Border.all(
                          color: Color.fromARGB(255, 0, 0, 0),
                          width: 1,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    height: 88,
                    left: 288,
                    top: 298,
                    width: 26,
                    child: Column(
                      children: [
                        Text(
                          "2", 
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontFamily: "SourceHanSans-Medium",
                            fontSize: 30.3777,
                            fontVariations: [FontVariation.weight(600)],
                            height: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Stack(
                children: [
                  Positioned(
                    height: 50,
                    left: 43,
                    top: 459,
                    width: 358,
                    child: Material(
                      type: MaterialType.transparency,
                      child: Ink(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment(0, -1),
                            colors: [
                              Color.fromARGB(255, 255, 238, 193),
                              Color.fromARGB(255, 255, 187, 4),
                              Color.fromARGB(255, 233, 137, 0),
                            ],
                            end: Alignment(0, 1),
                            stops: [
                              0,
                              0.334717,
                              0.994385,
                            ],
                          ),
                        ),
                        child: InkWell(
                          onTap: onAcceptTap,
                          child: Stack(
                            children: [
                              Positioned(
                                height: 43,
                                left: 155,
                                top: 14,
                                width: 89,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "確定", 
                                          style: TextStyle(
                                            color: Color.fromARGB(255, 255, 255, 255),
                                            fontFamily: "SourceHanSans-Medium",
                                            fontSize: 14.756,
                                            fontVariations: [FontVariation.weight(600)],
                                            height: 1,
                                          ),
                                        ),
                                        Text(
                                          "▶", 
                                          style: TextStyle(
                                            color: Color.fromARGB(255, 255, 255, 255),
                                            fontFamily: "SourceHanSans-Medium",
                                            fontSize: 10.5371,
                                            fontVariations: [FontVariation.weight(600)],
                                            height: 1,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

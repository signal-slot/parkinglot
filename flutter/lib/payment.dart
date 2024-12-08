import 'package:flutter/material.dart';

class Payment extends StatelessWidget {
  Payment({super.key, required this.onCardTap, required this.onCashTap, required this.onIcTap, required this.onPayTap});

  void Function()? onCardTap;
  void Function()? onCashTap;
  void Function()? onIcTap;
  void Function()? onPayTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: Stack(
          children: [
            Container(
              child: Stack(
                children: [
                  Positioned(
                    height: 83,
                    left: 176,
                    top: 99,
                    width: 491,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ),
                  Positioned(
                    height: 67,
                    left: 49,
                    top: 137,
                    width: 110,
                    child: Column(
                      children: [
                        Text(
                          "料金は", 
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
                  Positioned(
                    height: 95,
                    left: 373,
                    top: 117,
                    width: 96,
                    child: Column(
                      children: [
                        Text(
                          "200", 
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontFamily: "SourceHanSans-Bold",
                            fontSize: 32.7841,
                            fontVariations: [FontVariation.weight(600)],
                            height: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    height: 52,
                    left: 612,
                    top: 144,
                    width: 27,
                    child: Column(
                      children: [
                        Text(
                          "円", 
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontFamily: "SourceHanSans-Bold",
                            fontSize: 18.0195,
                            fontVariations: [FontVariation.weight(600)],
                            height: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    height: 67,
                    left: 682,
                    top: 137,
                    width: 71,
                    child: Column(
                      children: [
                        Text(
                          "です", 
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
                ],
              ),
            ),
            Positioned(
              height: 54,
              left: 208,
              top: 231,
              width: 384,
              child: Column(
                children: [
                  Text(
                    "お支払方法をお選びください", 
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontFamily: "SourceHanSans-Bold",
                      fontSize: 18.6667,
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
                    height: 91,
                    left: 76,
                    top: 293,
                    width: 315,
                    child: Material(
                      type: MaterialType.transparency,
                      child: Ink(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment(0.0031746, -0.989011),
                            colors: [
                              Color.fromARGB(255, 255, 238, 193),
                              Color.fromARGB(255, 255, 187, 4),
                              Color.fromARGB(255, 233, 137, 0),
                            ],
                            end: Alignment(0.0031746, 1.01099),
                            stops: [
                              0,
                              0.334717,
                              0.994385,
                            ],
                          ),
                        ),
                        child: InkWell(
                          onTap: onCashTap,
                          child: Stack(
                            children: [
                              Positioned(
                                height: 65,
                                left: 122,
                                top: 28,
                                width: 71,
                                child: Column(
                                  children: [
                                    Text(
                                      "現金", 
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 255, 255, 255),
                                        fontFamily: "SourceHanSans-Medium",
                                        fontSize: 22.6667,
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
                    height: 91,
                    left: 408,
                    top: 293,
                    width: 315,
                    child: Material(
                      type: MaterialType.transparency,
                      child: Ink(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment(0.0031746, -0.989011),
                            colors: [
                              Color.fromARGB(255, 255, 238, 193),
                              Color.fromARGB(255, 255, 187, 4),
                              Color.fromARGB(255, 233, 137, 0),
                            ],
                            end: Alignment(0.0031746, 1.01099),
                            stops: [
                              0,
                              0.334717,
                              0.994385,
                            ],
                          ),
                        ),
                        child: InkWell(
                          onTap: onCardTap,
                          child: Stack(
                            children: [
                              Positioned(
                                height: 65,
                                left: 25,
                                top: 28,
                                width: 267,
                                child: Column(
                                  children: [
                                    Text(
                                      "クレジットカード", 
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 255, 255, 255),
                                        fontFamily: "SourceHanSans-Medium",
                                        fontSize: 22.6667,
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
                    height: 91,
                    left: 76,
                    top: 401,
                    width: 315,
                    child: Material(
                      type: MaterialType.transparency,
                      child: Ink(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment(0.0031746, -0.989011),
                            colors: [
                              Color.fromARGB(255, 255, 238, 193),
                              Color.fromARGB(255, 255, 187, 4),
                              Color.fromARGB(255, 233, 137, 0),
                            ],
                            end: Alignment(0.0031746, 1.01099),
                            stops: [
                              0,
                              0.334717,
                              0.994385,
                            ],
                          ),
                        ),
                        child: InkWell(
                          onTap: onIcTap,
                          child: Stack(
                            children: [
                              Positioned(
                                height: 65,
                                left: 84,
                                top: 28,
                                width: 148,
                                child: Column(
                                  children: [
                                    Text(
                                      "交通系IC", 
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 255, 255, 255),
                                        fontFamily: "SourceHanSans-Medium",
                                        fontSize: 22.6667,
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
                    height: 91,
                    left: 408,
                    top: 401,
                    width: 315,
                    child: Material(
                      type: MaterialType.transparency,
                      child: Ink(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment(0.0031746, -0.989011),
                            colors: [
                              Color.fromARGB(255, 255, 238, 193),
                              Color.fromARGB(255, 255, 187, 4),
                              Color.fromARGB(255, 233, 137, 0),
                            ],
                            end: Alignment(0.0031746, 1.01099),
                            stops: [
                              0,
                              0.334717,
                              0.994385,
                            ],
                          ),
                        ),
                        child: InkWell(
                          onTap: onPayTap,
                          child: Stack(
                            children: [
                              Positioned(
                                height: 65,
                                left: 71,
                                top: 28,
                                width: 175,
                                child: Column(
                                  children: [
                                    Text(
                                      "電子マネー", 
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 255, 255, 255),
                                        fontFamily: "SourceHanSans-Medium",
                                        fontSize: 22.6667,
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
            Positioned(
              height: 48,
              left: 206,
              top: 558,
              width: 389,
              child: Column(
                children: [
                  Text(
                    "サービス券は先に入れてください", 
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontFamily: "SourceHanSans-Bold",
                      fontSize: 16.6667,
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
    );
  }
}

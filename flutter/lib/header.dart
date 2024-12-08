import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  Header({super.key, required this.onCancelTap});

  void Function()? onCancelTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: Stack(
          children: [
            Positioned(
              height: 156,
              left: -57,
              top: -78,
              width: 885,
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 24, 62, 119),
                ),
              ),
            ),
            Positioned(
              height: 50,
              left: 31,
              top: 13,
              width: 128,
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
                      end: Alignment(-1.11022e-16, -1),
                      stops: [
                        0,
                        1,
                      ],
                    ),
                  ),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(5.99999),
                    onTap: onCancelTap,
                    child: Stack(
                      children: [
                        Positioned(
                          height: 32,
                          left: 11,
                          top: 17,
                          width: 102,
                          child: Column(
                            children: [
                              Text(
                                "トップに戻る", 
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
              left: 641,
              top: 13,
              width: 128,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.99999),
                  gradient: LinearGradient(
                    begin: Alignment(0, 1),
                    colors: [
                      Color.fromARGB(255, 218, 218, 218),
                      Color.fromARGB(255, 255, 255, 255),
                    ],
                    end: Alignment(-1.11022e-16, -1),
                    stops: [
                      0,
                      1,
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              height: 32,
              left: 671,
              top: 30,
              width: 66,
              child: Column(
                children: [
                  Text(
                    "English", 
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
            Positioned(
              height: 58,
              left: 500,
              top: 22,
              width: 100,
              child: Column(
                children: [
                  Text(
                    "12：24", 
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontFamily: "SourceHanSans-Bold",
                      fontSize: 19.9428,
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

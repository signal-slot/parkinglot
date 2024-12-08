import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  Welcome({super.key, required this.onTap});

  void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: onTap,
        child: Container(
          child: Stack(
            children: [
              Container(
                child: Stack(
                  children: [
                    Positioned(
                      height: 157,
                      left: 31,
                      top: 31,
                      width: 738,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 24, 62, 119),
                        ),
                      ),
                    ),
                    Positioned(
                      height: 203,
                      left: 232,
                      top: 57,
                      width: 335,
                      child: Column(
                        children: [
                          Text(
                            "精算機", 
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontFamily: "SourceHanSans-Medium",
                              fontSize: 70.2046,
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
                      height: 82,
                      left: 98,
                      top: 243,
                      width: 605,
                      child: Column(
                        children: [
                          Text(
                            "画面を指でタップしてください", 
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontFamily: "SourceHanSans-Bold",
                              fontSize: 28.4281,
                              fontVariations: [FontVariation.weight(600)],
                              height: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      height: 48,
                      left: 294,
                      top: 302,
                      width: 212,
                      child: Column(
                        children: [
                          Text(
                            "Tap the screen.", 
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontFamily: "SourceHanSans-Medium",
                              fontSize: 16.7365,
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
                      height: 61,
                      left: 31,
                      top: 376,
                      width: 286,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: Color.fromARGB(255, 203, 223, 255),
                        ),
                      ),
                    ),
                    Positioned(
                      height: 33,
                      left: 128,
                      top: 389,
                      width: 91,
                      child: Column(
                        children: [
                          Text(
                            "お支払方法", 
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontFamily: "SourceHanSans-Medium",
                              fontSize: 11.3953,
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
                height: 162,
                left: 30,
                top: 408,
                width: 740,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Color.fromARGB(255, 255, 255, 255),
                    border: Border.all(
                      color: Color.fromARGB(255, 203, 223, 255),
                      width: 4,
                    ),
                  ),
                ),
              ),
              Container(
                child: Stack(
                  children: [
                    Positioned(
                      height: 53,
                      left: 86,
                      top: 465,
                      width: 58,
                      child: Image.asset(
                        "assets/images/1192bfad00425fed5d9992fce4bbb61baba2723f4004f526ae64dc8f07250aa9.png", 
                        fit: BoxFit.contain,
                        height: 53,
                        width: 58,
                      ),
                    ),
                    Positioned(
                      height: 27,
                      left: 100,
                      top: 429,
                      width: 30,
                      child: Column(
                        children: [
                          Text(
                            "現金", 
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
                    Positioned(
                      height: 23,
                      left: 65,
                      top: 528,
                      width: 101,
                      child: Column(
                        children: [
                          Text(
                            "新紙幣も使えます", 
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontFamily: "SourceHanSans-Medium",
                              fontSize: 8,
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
                    Container(
                      child: Stack(
                        children: [
                          Positioned(
                            height: 28,
                            left: 314,
                            top: 511,
                            width: 43,
                            child: Image.asset(
                              "assets/images/498ce93ca6ff4e67903ef063d0f0323128da491d.png", 
                              fit: BoxFit.contain,
                              height: 28,
                              width: 43,
                            ),
                          ),
                          Positioned(
                            height: 28,
                            left: 266,
                            top: 511,
                            width: 37,
                            child: Image.asset(
                              "assets/images/730f0f6b1a881c07b6539bb9b5886d8c8d625807.png", 
                              fit: BoxFit.contain,
                              height: 28,
                              width: 37,
                            ),
                          ),
                          Positioned(
                            height: 45,
                            left: 211,
                            top: 502,
                            width: 45,
                            child: Image.asset(
                              "assets/images/78c7ddb491d416672ef5bb72b2851002798037cd.png", 
                              fit: BoxFit.contain,
                              height: 45,
                              width: 45,
                            ),
                          ),
                          Positioned(
                            height: 44,
                            left: 307,
                            top: 457,
                            width: 61,
                            child: Image.asset(
                              "assets/images/05fb0171bc9c95570a5e46f62b87df372ecfe9d4.png", 
                              fit: BoxFit.contain,
                              height: 44,
                              width: 61,
                            ),
                          ),
                          Positioned(
                            height: 28,
                            left: 206,
                            top: 465,
                            width: 56,
                            child: Image.asset(
                              "assets/images/logo_Visa_s.png", 
                              fit: BoxFit.contain,
                              height: 28,
                              width: 56,
                            ),
                          ),
                          Positioned(
                            height: 32,
                            left: 262,
                            top: 463,
                            width: 45,
                            child: Image.asset(
                              "assets/images/8e29757faf8d84aef5487a00405801fc68e82f7f.png", 
                              fit: BoxFit.contain,
                              height: 32,
                              width: 45,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      height: 27,
                      left: 230,
                      top: 429,
                      width: 110,
                      child: Column(
                        children: [
                          Text(
                            "クレジットカード", 
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
              Container(
                child: Stack(
                  children: [
                    Positioned(
                      height: 35,
                      left: 450,
                      top: 452,
                      width: 49,
                      child: Image.asset(
                        "assets/images/suica.png", 
                        fit: BoxFit.contain,
                        height: 35,
                        width: 49,
                      ),
                    ),
                    Positioned(
                      height: 39,
                      left: 398,
                      top: 450,
                      width: 43,
                      child: Image.asset(
                        "assets/images/kitaca.png", 
                        fit: BoxFit.contain,
                        height: 39,
                        width: 43,
                      ),
                    ),
                    Positioned(
                      height: 37,
                      left: 503,
                      top: 451,
                      width: 50,
                      child: Image.asset(
                        "assets/images/pasmo.png", 
                        fit: BoxFit.contain,
                        height: 37,
                        width: 50,
                      ),
                    ),
                    Positioned(
                      height: 26,
                      left: 392,
                      top: 488,
                      width: 50,
                      child: Image.asset(
                        "assets/images/toica.png", 
                        fit: BoxFit.contain,
                        height: 26,
                        width: 50,
                      ),
                    ),
                    Positioned(
                      height: 22,
                      left: 444,
                      top: 492,
                      width: 59,
                      child: Image.asset(
                        "assets/images/manaca.png", 
                        fit: BoxFit.contain,
                        height: 22,
                        width: 59,
                      ),
                    ),
                    Positioned(
                      height: 32,
                      left: 503,
                      top: 489,
                      width: 50,
                      child: Image.asset(
                        "assets/images/icoca.png", 
                        fit: BoxFit.contain,
                        height: 32,
                        width: 50,
                      ),
                    ),
                    Positioned(
                      height: 29,
                      left: 393,
                      top: 518,
                      width: 48,
                      child: Image.asset(
                        "assets/images/sugoca.png", 
                        fit: BoxFit.contain,
                        height: 29,
                        width: 48,
                      ),
                    ),
                    Positioned(
                      height: 20,
                      left: 446,
                      top: 523,
                      width: 53,
                      child: Image.asset(
                        "assets/images/nimoca.png", 
                        fit: BoxFit.contain,
                        height: 20,
                        width: 53,
                      ),
                    ),
                    Positioned(
                      height: 22,
                      left: 503,
                      top: 523,
                      width: 50,
                      child: Image.asset(
                        "assets/images/aeda76088e69dc52429772a34100ef8c1423c731c0001e253f9734f819f77606.png", 
                        fit: BoxFit.contain,
                        height: 22,
                        width: 50,
                      ),
                    ),
                    Positioned(
                      height: 27,
                      left: 445,
                      top: 429,
                      width: 61,
                      child: Column(
                        children: [
                          Text(
                            "交通系IC", 
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
              Container(
                child: Stack(
                  children: [
                    Container(
                      child: Stack(
                        children: [
                          Positioned(
                            height: 48,
                            left: 686,
                            top: 477,
                            width: 66,
                            child: Image.asset(
                              "assets/images/7c3a9aed3242d4cef15d5cece6939b528aa659c8.png", 
                              fit: BoxFit.contain,
                              height: 48,
                              width: 66,
                            ),
                          ),
                          Positioned(
                            height: 32,
                            left: 636,
                            top: 485,
                            width: 43,
                            child: Image.asset(
                              "assets/images/88b22f4bc2aa84a66895e3451a3ab988af08a648.png", 
                              fit: BoxFit.contain,
                              height: 32,
                              width: 43,
                            ),
                          ),
                          Positioned(
                            height: 33,
                            left: 580,
                            top: 485,
                            width: 46,
                            child: Image.asset(
                              "assets/images/eff4e4d3000699fe98a14af52a191fe59a4d7427.png", 
                              fit: BoxFit.contain,
                              height: 33,
                              width: 46,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      height: 27,
                      left: 622,
                      top: 429,
                      width: 72,
                      child: Column(
                        children: [
                          Text(
                            "電子マネー", 
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
              Container(
                child: Stack(
                  children: [
                    Positioned(
                      height: 115,
                      left: 381,
                      top: 432,
                      width: 5,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 24, 62, 119),
                        ),
                      ),
                    ),
                    Positioned(
                      height: 115,
                      left: 189,
                      top: 432,
                      width: 5,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 24, 62, 119),
                        ),
                      ),
                    ),
                    Positioned(
                      height: 115,
                      left: 562,
                      top: 432,
                      width: 5,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 24, 62, 119),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

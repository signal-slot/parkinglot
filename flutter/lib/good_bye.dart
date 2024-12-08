import 'package:flutter/material.dart';

class GoodBye extends StatelessWidget {
  GoodBye({super.key, required this.onTap});

  void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: onTap,
        child: Container(
          child: Stack(
            children: [
              Positioned(
                height: 82,
                left: 94,
                top: 252,
                width: 610,
                child: Column(
                  children: [
                    Text(
                      "ご利用ありがとうございました", 
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
                height: 6,
                left: 133,
                top: 316,
                width: 534,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 24, 62, 119),
                  ),
                ),
              ),
              Positioned(
                height: 108,
                left: 100,
                top: 362,
                width: 602,
                child: Column(
                  children: [
                    Text(
                      "精算後5分で再びロック板が上がりますので", 
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontFamily: "SourceHanSans-Bold",
                        fontSize: 19.5497,
                        fontVariations: [FontVariation.weight(600)],
                        height: 1,
                      ),
                    ),
                    Text(
                      "５分以内に出庫してください", 
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontFamily: "SourceHanSans-Bold",
                        fontSize: 19.5497,
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
    );
  }
}

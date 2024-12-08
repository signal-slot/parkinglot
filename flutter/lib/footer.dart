import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: Stack(
          children: [
            Positioned(
              height: 65,
              left: -1,
              top: 537,
              width: 802,
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 233, 241, 255),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

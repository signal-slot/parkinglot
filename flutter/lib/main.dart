import 'package:flutter/material.dart';
import './main_window.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});
  
  @override
  State<StatefulWidget> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  bool headerFooterVisibility = false;
  bool welcomeVisibility = true;
  bool parkingSlotVisibility = false;
  bool paymentVisibility = false;
  bool goodByeVisibility = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: MainWindow(
            headerVisibility: headerFooterVisibility,
            footerVisibility: headerFooterVisibility,
            welcomeVisibility: welcomeVisibility,
            parkingSlotVisibility: parkingSlotVisibility,
            paymentVisibility: paymentVisibility,
            goodByeVisibility: goodByeVisibility,
            onParkingSlotAcceptTap: () {
              setState(() {
                parkingSlotVisibility = false;
                paymentVisibility = true;
                goodByeVisibility = false;
                headerFooterVisibility = true;
                welcomeVisibility = false;
              });
            },
            onHeaderCancelTap: () {
              setState(() {
                parkingSlotVisibility = false;
                paymentVisibility = false;
                goodByeVisibility = false;
                headerFooterVisibility = false;
                welcomeVisibility = true;
              });
            },
            onPaymentCardTap: () {
              setState(() {
                parkingSlotVisibility = false;
                paymentVisibility = false;
                goodByeVisibility = true;
                headerFooterVisibility = true;
                welcomeVisibility = false;
              });
            },
            onGoodByeTap: () {
              setState(() {
                parkingSlotVisibility = false;
                paymentVisibility = false;
                goodByeVisibility = false;
                headerFooterVisibility = false;
                welcomeVisibility = true;
              });
            },
            onPaymentIcTap: () {
              setState(() {
                parkingSlotVisibility = false;
                paymentVisibility = false;
                goodByeVisibility = true;
                headerFooterVisibility = true;
                welcomeVisibility = false;
              });
            },
            onPaymentCashTap: () {
              setState(() {
                parkingSlotVisibility = false;
                paymentVisibility = false;
                goodByeVisibility = true;
                headerFooterVisibility = true;
                welcomeVisibility = false;
              });
            },
            onParkingSlotKey0Tap: () {},
            onParkingSlotKey1Tap: () {},
            onParkingSlotKey2Tap: () {},
            onParkingSlotKey3Tap: () {},
            onParkingSlotKey4Tap: () {},
            onParkingSlotKey5Tap: () {},
            onParkingSlotKey6Tap: () {},
            onParkingSlotKey7Tap: () {},
            onParkingSlotKey8Tap: () {},
            onParkingSlotKey9Tap: () {},
            onParkingSlotKeyCTap: () {},
            onPaymentPayTap: () {
              setState(() {
                parkingSlotVisibility = false;
                paymentVisibility = false;
                goodByeVisibility = true;
                headerFooterVisibility = true;
                welcomeVisibility = false;
              });
            },
            onWelcomeTap: () {
              setState(() {
                parkingSlotVisibility = true;
                paymentVisibility = false;
                goodByeVisibility = false;
                headerFooterVisibility = true;
                welcomeVisibility = false;
              });
            },            
          ),
        ),
      ),
    );
  }
}

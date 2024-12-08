import './footer.dart';
import './good_bye.dart';
import './header.dart';
import './parking_slot.dart';
import './payment.dart';
import './welcome.dart';
import 'package:flutter/material.dart';

class MainWindow extends StatelessWidget {
  MainWindow({super.key, this.footerVisibility = false, this.goodByeVisibility = false, this.headerVisibility = false, required this.onGoodByeTap, required this.onHeaderCancelTap, required this.onParkingSlotAcceptTap, required this.onParkingSlotKey0Tap, required this.onParkingSlotKey1Tap, required this.onParkingSlotKey2Tap, required this.onParkingSlotKey3Tap, required this.onParkingSlotKey4Tap, required this.onParkingSlotKey5Tap, required this.onParkingSlotKey6Tap, required this.onParkingSlotKey7Tap, required this.onParkingSlotKey8Tap, required this.onParkingSlotKey9Tap, required this.onParkingSlotKeyCTap, required this.onPaymentCardTap, required this.onPaymentCashTap, required this.onPaymentIcTap, required this.onPaymentPayTap, required this.onWelcomeTap, this.parkingSlotVisibility = false, this.paymentVisibility = false, this.welcomeVisibility = true});

  bool footerVisibility;
  bool goodByeVisibility;
  bool headerVisibility;
  void Function()? onGoodByeTap;
  void Function()? onHeaderCancelTap;
  void Function()? onParkingSlotAcceptTap;
  void Function()? onParkingSlotKey0Tap;
  void Function()? onParkingSlotKey1Tap;
  void Function()? onParkingSlotKey2Tap;
  void Function()? onParkingSlotKey3Tap;
  void Function()? onParkingSlotKey4Tap;
  void Function()? onParkingSlotKey5Tap;
  void Function()? onParkingSlotKey6Tap;
  void Function()? onParkingSlotKey7Tap;
  void Function()? onParkingSlotKey8Tap;
  void Function()? onParkingSlotKey9Tap;
  void Function()? onParkingSlotKeyCTap;
  void Function()? onPaymentCardTap;
  void Function()? onPaymentCashTap;
  void Function()? onPaymentIcTap;
  void Function()? onPaymentPayTap;
  void Function()? onWelcomeTap;
  bool parkingSlotVisibility;
  bool paymentVisibility;
  bool welcomeVisibility;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      width: 800,
      child: Stack(
        children: [
          Positioned(
            height: 602,
            left: -1,
            top: -1,
            width: 802,
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 245, 245, 237),
              ),
            ),
          ),
          Visibility(
            visible: footerVisibility,
            child: Footer(
            ),
          ),
          Visibility(
            visible: goodByeVisibility,
            child: GoodBye(
              onTap: onGoodByeTap,
            ),
          ),
          Visibility(
            visible: paymentVisibility,
            child: Payment(
              onCardTap: onPaymentCardTap,
              onCashTap: onPaymentCashTap,
              onIcTap: onPaymentIcTap,
              onPayTap: onPaymentPayTap,
            ),
          ),
          Visibility(
            visible: parkingSlotVisibility,
            child: ParkingSlot(
              onAcceptTap: onParkingSlotAcceptTap,
              onKey0Tap: onParkingSlotKey0Tap,
              onKey1Tap: onParkingSlotKey1Tap,
              onKey2Tap: onParkingSlotKey2Tap,
              onKey3Tap: onParkingSlotKey3Tap,
              onKey4Tap: onParkingSlotKey4Tap,
              onKey5Tap: onParkingSlotKey5Tap,
              onKey6Tap: onParkingSlotKey6Tap,
              onKey7Tap: onParkingSlotKey7Tap,
              onKey8Tap: onParkingSlotKey8Tap,
              onKey9Tap: onParkingSlotKey9Tap,
              onKeyCTap: onParkingSlotKeyCTap,
            ),
          ),
          Visibility(
            visible: headerVisibility,
            child: Header(
              onCancelTap: onHeaderCancelTap,
            ),
          ),
          Visibility(
            visible: welcomeVisibility,
            child: Welcome(
              onTap: onWelcomeTap,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:zeroem_app/constants.dart';

// Alttaki 'Hesapla' Butonunu Temsil eden Class

class AltButton extends StatelessWidget {
  AltButton({@required this.onTap, this.buttonBaslik});

  final Function onTap;
  final String buttonBaslik;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonBaslik,
            style: kAltButtonTextStyle,
          ),
        ),
        color: Colors.green,
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}

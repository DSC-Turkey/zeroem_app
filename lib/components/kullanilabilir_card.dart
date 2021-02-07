import 'package:flutter/material.dart';

class KullanilabilirCard extends StatelessWidget {
  KullanilabilirCard({@required this.renk, this.cardChild});

  final Color renk;
  final Widget cardChild;

  //Kullanilabilir cardlari stateless haline getirip bu dart dosyasinda tutup, buradan diger yerlerde cagiriyorum.

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0,
      width: 100.0,
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: renk,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}

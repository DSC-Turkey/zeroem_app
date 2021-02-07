import 'package:flutter/material.dart';
import 'package:zeroem_app/constants.dart';
import 'package:zeroem_app/screens/hesaplama_ekrani.dart';
import 'package:zeroem_app/hesaplayici.dart';

//Her bir Kullanilabilir card, in icindeki ogeleri burada olusturup, buradan istenildiginde cagiriyorum.

class IconIcerik extends StatefulWidget {
  IconIcerik({this.icon, this.etiket, this.olcum, this.olcumAd, this.slider});

  final IconData icon;
  final String etiket;
  int olcum;
  final String olcumAd;
  final Widget slider;

  @override
  _IconIcerikState createState() => _IconIcerikState();
}

class _IconIcerikState extends State<IconIcerik> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        textBaseline: TextBaseline.alphabetic,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(
                    widget.icon,
                    size: 30,
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Text(
                    widget.etiket,
                    style: etiketTextStyle,
                  ),
                  SizedBox(
                    width: 75.0,
                  ),
                  Text(
                    widget.olcum.toString(),
                    style: kNumaraTextStyle,
                  ),
                  Text(
                    widget.olcumAd,
                    style: kNumaraTextStyle,
                  )
                ],
              ),
              widget.slider,
            ],
          )
        ],
      ),
    );
  }
}

//Slider in temasini degistirmistim ama sonradan yorum satiri yaptim.

//
//SliderTheme(
//data: SliderTheme.of(context).copyWith(
//inactiveTrackColor: Color(0xFF8D8E98),
//activeTrackColor: Colors.white,
//thumbColor: Colors.green,
//overlayColor: Colors.green,
//thumbShape: RoundSliderThumbShape(enabledThumbRadius: 13.0),
//overlayShape: RoundSliderOverlayShape(overlayRadius: 21.0)),
//child:

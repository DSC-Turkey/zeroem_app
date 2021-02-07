import 'package:flutter/material.dart';
import 'package:zeroem_app/constants.dart';
import 'package:zeroem_app/components/kullanilabilir_card.dart';
import 'package:zeroem_app/components/alt_button.dart';

//Hesaplanan sonuclarin ve o sonuclara gore cagirilann kosullarin oldugu sayfa.

class SonucEkrani extends StatelessWidget {
  SonucEkrani({this.hesaplamaSonuc});

  //Hesaplama ekranindan alinip hesaplanan toplam veriyi buraya getirdim.
  final String hesaplamaSonuc;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SONUÇLAR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.center,
              child: Text(
                'Sonuçların',
                style: kBaslikTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: KullanilabilirCard(
              renk: kKartRengi,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Çok Yüksek!',
                    style: kSonucTextStyle,
                  ),

                  //Ardindan o veriyi burada kullandim.

                  Text(hesaplamaSonuc + '  kg', style: kHesaplamaTextStyle),
                  Text('Karbon ayak izin çok yüksek ! Düşürmelisin',
                      textAlign: TextAlign.center, style: kBodyTextStyle),
                ],
              ),
            ),
          ),
          AltButton(
            onTap: () {
              Navigator.pop(context);
            },
            buttonBaslik: 'YENİDEN HESAPLA',
          )
        ],
      ),
    );
  }
}

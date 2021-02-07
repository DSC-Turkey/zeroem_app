import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:zeroem_app/components/icon_icerik.dart';
import 'package:zeroem_app/components/kullanilabilir_card.dart';
import 'package:zeroem_app/constants.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:zeroem_app/screens/pie_chart_page.dart';
import 'package:zeroem_app/screens/sonuc_ekrani.dart';
import 'package:zeroem_app/components/alt_button.dart';
import 'package:zeroem_app/hesaplayici.dart';
import 'introduction_page.dart';


// Burasi Hesaplama ekrani , her sey burada donuyor.

class HesaplamaEkrani extends StatefulWidget {
  @override
  _HesaplamaEkraniState createState() => _HesaplamaEkraniState();
}

class _HesaplamaEkraniState extends State<HesaplamaEkrani> {
  int km = 0;
  int kwh = 0;
  int ogun = 0;
  int litre = 0;
  int yurume = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ZeroEm'),
      ),
      
      // Acilir menunun olugu kisim burasi
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountEmail: Text('ZeroEM@gmail.com'),
              accountName: Text('ZeroEM'),
              currentAccountPicture: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/zemlog.jpg"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(50.0)),
              ),
              decoration: BoxDecoration(color: Colors.green),
            ),
            ListTile(
              title: Text("Hakkımızda"),
              onTap: () {},
            ),
            ListTile(
              title: Text("Yardım"),
              onTap: () {},
            ),
            ListTile(
              title: Text("Gizlilik"),
              onTap: () {},
            ),
            ListTile(
              title: Text("Çıkış Yap"),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Baslangic()));
              },
            )
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 700.0,
            child: ListView(
              children: <Widget>[
                KullanilabilirCard(
                  renk: kKartRengi,
                  cardChild: IconIcerik(
                    icon: FontAwesomeIcons.car,
                    etiket: 'Araba',
                    olcum: km,
                    olcumAd: 'km',
                    slider: Slider(
                        value: km.toDouble(),
                        min: 0,
                        max: 500,
                        activeColor: Colors.white,
                        inactiveColor: Color(0xFF8D8E98),
                        onChanged: (double newValue) {
                          setState(() {
                            print(newValue.round());
                            km = newValue.round();
                          });
                        }),
                  ),
                ),
                KullanilabilirCard(
                  renk: kKartRengi,
                  cardChild: IconIcerik(
                    icon: FontAwesomeIcons.walking,
                    etiket: 'Yurume',
                    olcum: yurume,
                    olcumAd: 'km',
                    slider: Slider(
                        value: yurume.toDouble(),
                        min: 0,
                        max: 500,
                        activeColor: Colors.white,
                        inactiveColor: Color(0xFF8D8E98),
                        onChanged: (double newValue) {
                          setState(() {
                            print(newValue.round());
                            yurume = newValue.round();
                          });
                        }),
                  ),
                ),
                KullanilabilirCard(
                  renk: kKartRengi,
                  cardChild: IconIcerik(
                    icon: Icons.fastfood,
                    etiket: 'Hamburger',
                    olcum: ogun,
                    olcumAd: '  Ogun',
                    slider: Slider(
                        value: ogun.toDouble(),
                        min: 0,
                        max: 500,
                        activeColor: Colors.white,
                        inactiveColor: Color(0xFF8D8E98),
                        onChanged: (double newValue) {
                          setState(() {
                            print(newValue.round());
                            ogun = newValue.round();
                          });
                        }),
                  ),
                ),
                KullanilabilirCard(
                  renk: kKartRengi,
                  cardChild: IconIcerik(
                    icon: FontAwesomeIcons.water,
                    etiket: 'Su',
                    olcum: litre,
                    olcumAd: 'lt',
                    slider: Slider(
                        value: litre.toDouble(),
                        min: 0,
                        max: 500,
                        activeColor: Colors.white,
                        inactiveColor: Color(0xFF8D8E98),
                        onChanged: (double newValue) {
                          setState(() {
                            print(newValue.round());
                            litre = newValue.round();
                          });
                        }),
                  ),
                ),
                KullanilabilirCard(
                  renk: kKartRengi,
                  cardChild: IconIcerik(
                    icon: FontAwesomeIcons.lightbulb,
                    etiket: 'Elektrik',
                    olcum: kwh,
                    olcumAd: 'kwh',
                    slider: Slider(
                        value: kwh.toDouble(),
                        min: 0,
                        max: 500,
                        activeColor: Colors.white,
                        inactiveColor: Color(0xFF8D8E98),
                        onChanged: (double newValue) {
                          setState(() {
                            print(newValue.round());
                            kwh = newValue.round();
                          });
                        }),
                  ),
                ),
              ],
            ),
          ),
          AltButton(
            buttonBaslik: 'HESAPLA',
            onTap: () {
              //"hesaplayici" classindaki hesaplamalarin, buradaki veriler ile hesaplanip, sonuc ekranina aktarildigi yer.

              CalculatorBrain hesap = CalculatorBrain(
                  km: km, kwh: kwh, ogun: ogun, lt: litre, yurume: yurume);
              int hesapSonuc = hesap.calculateEmKM().toInt() +
                  hesap.calculateEmLT().toInt() +
                  hesap.calculateEmWALK().toInt() +
                  hesap.calculateEmKWH().toInt() +
                  hesap.calculateEmOGUN().toInt();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SonucEkrani(
                            hesaplamaSonuc: hesapSonuc.toString(),
                          )));
            },
          ),
        ],
      ),
    );
  }
}

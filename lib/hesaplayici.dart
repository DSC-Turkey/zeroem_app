import 'dart:math';

//Slider'dan alinan degerlere gore, verileri hesaplayip, islemlerinin yapildigi class burasi.

class CalculatorBrain {
  CalculatorBrain({this.km, this.ogun, this.lt, this.kwh, this.yurume});

  final int km;

  final ogun;

  final lt;

  final kwh;

  final yurume;

  double em;

  // 1  km nin yaktigi karbon ayak izi hesaplamasi

  double calculateEmKM() {
    em = km * 0.25;
    return em;
  }

  // 1  ogun nun yaktigi karbon ayak izi hesaplamasi

  double calculateEmOGUN() {
    em = ogun * 2.55;
    return em;
  }

  // 1  lt nin yaktigi karbon ayak izi hesaplamasi

  double calculateEmLT() {
    em = lt * 0.50;
    return em;
  }

  // 1  kwh nin yaktigi karbon ayak izi hesaplamasi

  double calculateEmKWH() {
    em = kwh * 0.90;
    return em;
  }

  // 1  km yurumenin yaktigi karbon ayak izi hesaplamasi

  double calculateEmWALK() {
    em = kwh * 0.25;
    return em;
  }

  //Veli hocam, if,else yapisi ekleyerek, cikan toplama islemine gore farkli yazilar yazdiracaktim,
  //ancak proje teslim tarihinden oturu firsat olmadi, kusuruma bakmayin, saygilar, tesekkurler.

  String getSonucYazi() {}
}

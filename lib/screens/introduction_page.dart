import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';
import 'hesaplama_ekrani.dart';

void main() => runApp(Baslangic());


// Kaydirmali Animasyonlarin oldugu ekran burasi

class Baslangic extends StatelessWidget {
  List<PageViewModel> getPages() {
    return [
      PageViewModel(
          image: Lottie.asset('assets/animasyon/crbon.json'),
          title: "Karbon Ayak İzi Nedir?",
          body:
              "Karbon Ayak İzi, üretilen sera gazı miktarı üzerinden insanların yaşadığı yere ve faaliyetlere göre farklılık göstererek çevreye verdiği zararı gösterir.",
          footer: Text("")),
      PageViewModel(
          image: Lottie.asset('assets/animasyon/emission.json'),
          title: "Karbon Ayak İzinin Hayatımıza Etkisi Nedir?",
          body:
              "Karbon Ayak İzinin artmasının hayatımızda karşılığı küresel ısınmanın artması, iklim değişikliğinin günden güne hızlanması ve doğanın yok olmasıdır.  Günlük hayatımızda kullandığımız fosil yakıtlar, hızlı nüfus artışı ve hızlı nüfus artışına bağlı tüketim hızının zirvelere çıkması, ormanların gün geçtikçe azalması ve yerini çorak arazilere bırakması karbon ayak izin artmasının sebeplerinin başında gelmekte. Doğaya salınan karbondioksit miktarını büyük bir çoğunluğunu bireylerden çok kurumlar olşturmaktadır.",
          footer: Text("")),
      PageViewModel(
          image: Lottie.asset('assets/animasyon/carbon.json'),
          title: 'Karbon Ayak İzini Nasıl Azaltırız?',
          body: 'Enerji tasarrufu sağlayan ev gereçleri kullanmak. '
              'Hayvansal gıdalardan kaçınarak vegan yiyeceklere yönelmek.'
              'Kullanılmayan ve elektrik tüketen gereçler kapalı tutulmalı.'
              'Isınma ve duşta minumum sıcaklıkta su kullanılmalı. '
              'Yenilenebilir enerji kullanılmalı. Güneş enerjisi kullanılarak doğalgaz kullanımı azaltılmalı.'
              'Çöpler geri dönüşüm kutularına atılmalıdır.',
          footer: Text("")),
      PageViewModel(
          image: Lottie.asset('assets/animasyon/carbonem.json'),
          title: "Zero Emission - Sıfır Karbon Ayak izi!",
          body: "",
          footer: Text("")),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.blue,
          body: IntroductionScreen(
            done: Text(
              "Devam",
              style: TextStyle(fontSize: 20.0, color: Colors.black),
            ),
            onDone: () {
              Navigator.of(context).push(
                
                //Buradan Hesaplama Ekrani sayfasina yonlendiriyor
                
                  MaterialPageRoute(builder: (context) => HesaplamaEkrani()));
            },
            pages: getPages(),
            globalBackgroundColor: Colors.white,
          ),
        ));
  }
}

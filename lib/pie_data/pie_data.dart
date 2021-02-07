import 'package:flutter/material.dart';


//Veli Hocam, Pie Chart kullanmak istemistimm projede, "fl_chart" packageini kullandim bunun icin, 
//ama layoutlardan dolayi istedigim performansi vermedi, o nedenle bu kodlar pafis haldedir ama Pie Chart calisiyor.



class PieData {
  static List<Data> data = [
    Data(name: 'Blue', percent: 40, color: const Color(0xff0293ee)),
    Data(name: 'Orange', percent: 30, color: const Color(0xfff8b250)),
    Data(name: 'Black', percent: 15, color: Colors.black),
    Data(name: 'Green', percent: 15, color: const Color(0xff13d38e)),
  ];
}

class Data {
  final String name;

  final double percent;

  final Color color;

  Data({this.name, this.percent, this.color});
}

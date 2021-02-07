import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:zeroem_app/pie_data/pie_data.dart';
import 'package:zeroem_app/screens/pie_chart_page.dart';

//Veli Hocam, Pie Chart kullanmak istemistimm projede, "fl_chart" packageini kullandim bunun icin, 
//ama layoutlardan dolayi istedigim performansi vermedi, o nedenle bu kodlar pafis haldedir ama Pie Chart calisiyor.


List<PieChartSectionData> getSection(int touchedIndex) => PieData.data
    .asMap()
    .map<int, PieChartSectionData>((index, data) {
      final isTouched = index == touchedIndex;
      final double fontSize = isTouched ? 25 : 16;
      final double radius = isTouched ? 100 : 80;

      final value = PieChartSectionData(
        color: data.color,
        value: data.percent,
        title: '${data.percent}%',
        radius: radius,
        titleStyle: TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
          color: const Color(0xffffffff),
        ),
      );

      return MapEntry(index, value);
    })
    .values
    .toList();

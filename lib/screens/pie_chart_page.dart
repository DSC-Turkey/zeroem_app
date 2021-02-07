import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:zeroem_app/pie_widget/pie_chart_sections.dart';
import 'package:zeroem_app/pie_widget/indicators_widget.dart';

class PieChartPage extends StatefulWidget {
  @override
  _PieChartPageState createState() => _PieChartPageState();
}

class _PieChartPageState extends State<PieChartPage> {
  int touchedIndex;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Expanded(
            child: PieChart(
              PieChartData(
                pieTouchData: PieTouchData(touchCallback: (pieTouchResponse) {
                  setState(() {
                    if (pieTouchResponse.touchInput is FlLongPressEnd ||
                        pieTouchResponse.touchInput is FlPanEnd) {
                      touchedIndex = -1;
                    } else {
                      touchedIndex = pieTouchResponse.touchedSectionIndex;
                    }
                  });
                }),
                borderData: FlBorderData(show: false),
                sectionsSpace: 8,
                centerSpaceRadius: 80,
                sections: getSection(touchedIndex),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                  padding: const EdgeInsets.all(16), child: IndicatorsWidget()),
            ],
          )
        ],
      ),
    );
  }
}

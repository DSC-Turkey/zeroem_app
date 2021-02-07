import 'package:flutter/material.dart';
import 'package:zeroem_app/pie_data/pie_data.dart';



//Veli Hocam, Pie Chart kullanmak istemistimm projede, "fl_chart" packageini kullandim bunun icin, 
//ama layoutlardan dolayi istedigim performansi vermedi, o nedenle bu kodlar pafis haldedir ama Pie Chart calisiyor.



class IndicatorsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: PieData.data
          .map(
            (data) => Container(
                padding: EdgeInsets.symmetric(vertical: 2),
                child: buildIndicator(
                  color: data.color,
                  text: data.name,
                  // isSquare: true,
                )),
          )
          .toList(),
    );
  }

  Widget buildIndicator({
    @required Color color,
    @required String text,
    bool isSquare = false,
    double size = 16,
    Color textColor = const Color(0xff505050),
  }) =>
      Row(
        children: <Widget>[
          Container(
            width: size,
            height: size,
            decoration: BoxDecoration(
              shape: isSquare ? BoxShape.rectangle : BoxShape.circle,
              color: color,
            ),
          ),
          const SizedBox(width: 8),
          Text(
            text,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: textColor,
            ),
          )
        ],
      );
}

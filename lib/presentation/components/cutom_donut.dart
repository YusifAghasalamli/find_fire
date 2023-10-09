import 'package:flutter/material.dart';

import 'package:syncfusion_flutter_charts/charts.dart';

class DoughnutChart extends StatelessWidget {
  final double percentage; // Percentage completion value (between 0 and 100)

  DoughnutChart({this.percentage = 50.0}); // Default value is 50%

  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [
      ChartData('David', percentage, Color.fromRGBO(9, 0, 136, 1)),
      ChartData('Steve', 100 - percentage, Color.fromRGBO(147, 0, 119, 1)),
    ];
    return SfCircularChart(
      series: <CircularSeries>[
        // Renders doughnut chart

        DoughnutSeries<ChartData, String>(
            // strokeColor: ColorConstants.primaryRed,
            cornerStyle: CornerStyle.bothFlat,
            dataSource: chartData,
            pointColorMapper: (ChartData data, _) => data.color,
            xValueMapper: (ChartData data, _) => data.x,
            yValueMapper: (ChartData data, _) => data.y,
            radius: "90%"),
      ],
    );
  }
}

class ChartData {
  ChartData(this.x, this.y, this.color);
  final String x;
  final double y;
  final Color color;
}

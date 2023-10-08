import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ProbabilityDonutChart extends StatelessWidget {
  final double probability; // Probability value between 0 and 100

  const ProbabilityDonutChart({super.key, required this.probability});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.2,
      child: PieChart(
        PieChartData(
          sectionsSpace: 2, // Space between chart sections
          centerSpaceRadius: 50, // Size of the center hole (donut hole)
          sections: [
            PieChartSectionData(
              value: probability, // Probability value (0 to 100)
              color: Colors.blue, // Color for the chart section
              showTitle: false, // Hide section title
            ),
            PieChartSectionData(
              value: 100 - probability, // Remaining value
              color: Colors.grey[300]!, // Color for the remaining section
              showTitle: false, // Hide section title
            ),
          ],
        ),
      ),
    );
  }
}

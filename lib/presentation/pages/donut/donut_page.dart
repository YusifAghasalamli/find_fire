import 'package:find_fire/presentation/pages/donut/donut.dart';
import 'package:flutter/material.dart';

class DonutPage extends StatelessWidget {
  const DonutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Container(
              height: 400,
              width: 400,
              child: ProbabilityDonutChart(probability: 90))),
    );
  }
}

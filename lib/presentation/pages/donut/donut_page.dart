import 'package:find_fire/presentation/components/cutom_donut.dart';
import 'package:flutter/material.dart';

class DonutPage extends StatelessWidget {
  const DonutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: DoughnutChart()),
    );
  }
}

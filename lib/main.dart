import 'package:fl_chart_app/widgets/chart.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(const FlCahert());
}

class FlCahert extends StatelessWidget {
  const FlCahert({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Chart(),
    );
  }
}

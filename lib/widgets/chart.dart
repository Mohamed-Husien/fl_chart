import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import 'fl_class.dart';

class Chart extends StatefulWidget {
  const Chart({super.key});

  @override
  State<Chart> createState() => _ChartState();
}

class _ChartState extends State<Chart> {
  List<SalesData> _chartData = [];
  TooltipBehavior? _tooltipBehavior;
  @override
  void initState() {
    _chartData = getChartData();
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity, // Set the desired width of the chart
          height: 300,
          child: SfCartesianChart(
            title: const ChartTitle(text: 'Heart measure'),
            legend: const Legend(isVisible: true),
            tooltipBehavior: _tooltipBehavior,
            series: <SplineSeries<SalesData, String>>[
              SplineSeries<SalesData, String>(
                dataSource: _chartData,
                yValueMapper: (SalesData sales, _) => sales.sales,
                xValueMapper: (SalesData sales, _) => sales.years,
                dataLabelSettings: const DataLabelSettings(isVisible: true),
                enableTooltip: true,
                splineType: SplineType.cardinal,
              )
            ],
            primaryXAxis: const CategoryAxis(
              edgeLabelPlacement: EdgeLabelPlacement.shift,
            ),
            primaryYAxis: const NumericAxis(
              labelFormat: '{value}Bp',
              // numberFormat: NumberFormat.simpleCurrency(decimalDigits: 0),
            ),
          ),
        ),
      ),
    );
  }
}

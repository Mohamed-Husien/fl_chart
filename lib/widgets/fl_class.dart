class SalesData {
  final String years;
  final double sales;
  SalesData(this.years, this.sales);
}

List<SalesData> getChartData() {
  final List<SalesData> chartData = [
    SalesData('3:00 am', 22),
    SalesData('4:00 am', 44),
    SalesData('5:00 am', 55),
    SalesData('6:00 am', 77),
    SalesData('7:00 am', 66),
    SalesData('8:00 am', 50),
    SalesData('9:00 am', 80),
  ];
  return chartData;
}
// SalesData(2004, 66),
//     SalesData(2006, 55),
//     SalesData(2008, 33),
//     SalesData(2010, 44),
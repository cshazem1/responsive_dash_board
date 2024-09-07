import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeCart extends StatelessWidget {
  const IncomeCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 1,
        child: PieChart(getPieChartData()));
  }

  PieChartData getPieChartData() {
    return PieChartData(sectionsSpace: 0, sections: [
      PieChartSectionData(
        showTitle: false,
        color: const Color(0xffE2DECD),
        value: 10,
      ),
      PieChartSectionData(
        showTitle: false,
        color: const Color(0xff064061),
        value: 15,
      ),
      PieChartSectionData(
        showTitle: false,
        color: const Color(0xff4EB7F2),
        value: 25,
      ),
      PieChartSectionData(
        showTitle: false,
        color: const Color(0xff208CC8),
        value: 40,
      ),
    ]);
  }
}

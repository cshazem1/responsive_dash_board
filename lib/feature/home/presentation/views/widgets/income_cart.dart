import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeCart extends StatefulWidget {
   const IncomeCart({
    super.key,
  });

  @override
  State<IncomeCart> createState() => _IncomeCartState();
}

class _IncomeCartState extends State<IncomeCart> {
int activeIndex=-1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getPieChartData(),));
  }

  PieChartData getPieChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(enabled: true,touchCallback: (p0, p1) {
        activeIndex=p1?.touchedSection?.touchedSectionIndex??0;

        setState(() {});

        print("$p0   ${p1?.touchedSection?.touchRadius}");
      },),
        sectionsSpace: 0, sections: [
      PieChartSectionData(
        showTitle: false,
        radius: activeIndex == 0 ? 60 : 50,

        color: const Color(0xffE2DECD),
        value: 10,
      ),
      PieChartSectionData(
        radius: activeIndex == 1 ? 60 : 50,

        showTitle: false,
        color: const Color(0xff064061),
        value: 15,
      ),
      PieChartSectionData(
        radius: activeIndex == 2 ? 60 : 50,

        showTitle: false,
        color: const Color(0xff4EB7F2),
        value: 25,
      ),
      PieChartSectionData(
        radius: activeIndex == 3 ? 60 : 50,

        showTitle: false,
        color: const Color(0xff208CC8),
        value: 40,
      ),
    ],);
  }
}

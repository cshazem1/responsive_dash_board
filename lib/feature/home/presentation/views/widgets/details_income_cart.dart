import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_styles.dart';

class DetailsIncomeChart extends StatefulWidget {
  const DetailsIncomeChart({
    super.key,
  });

  @override
  State<DetailsIncomeChart> createState() => _DetailsIncomeChartState();
}

class _DetailsIncomeChartState extends State<DetailsIncomeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 1,
        child: PieChart(
          getPieChartData(),
        ));
  }

  PieChartData getPieChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, p1) {
          activeIndex = p1?.touchedSection?.touchedSectionIndex ?? 0;

          setState(() {});

          print("$p0   ${p1?.touchedSection?.touchRadius}");
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
            radius: activeIndex == 0 ? 60 : 50,
            color: activeIndex == 0 ?null :const Color(0xFFE2DECD),
            title:activeIndex==0?"Other" : "22%",
            titlePositionPercentageOffset: activeIndex == 0 ? 1.5 : null,
            value:22 ,
            titleStyle:
                AppStyles.styleMedium20(context).copyWith(color:activeIndex==0?Colors.red: Colors.black)),
        PieChartSectionData(
            titlePositionPercentageOffset: activeIndex == 1 ? 1.5 : null,

            radius: activeIndex == 1 ? 60 : 50,
            color: activeIndex == 1 ?null :const Color(0xff064061),
            title:activeIndex==1?"Product royalti" : "20%",
            value: 20,
            titleStyle: AppStyles.styleMedium20(context).copyWith(color:activeIndex==1?Colors.red: Colors.black)),
        PieChartSectionData(
            titlePositionPercentageOffset: activeIndex == 2 ? 2.2 : null,

            radius: activeIndex == 2 ? 60 : 50,
            color:activeIndex == 2 ?null : const Color(0xff4EB7F2),
            title:activeIndex==2?"Design product" : "25%",
            value: 25,
            titleStyle: AppStyles.styleMedium20(context).copyWith(color:activeIndex==2?Colors.red: Colors.black)),
        PieChartSectionData(
            titlePositionPercentageOffset: activeIndex == 3 ? 1.4 : null,

            radius: activeIndex == 3 ? 60 : 50,
            color:activeIndex == 3 ?null : const Color(0xff208CC8),
            title:activeIndex==3?"Design service" : "40%",
            value: 40,
            titleStyle: AppStyles.styleMedium20(context).copyWith(color:activeIndex==3?Colors.red: Colors.black)),
      ],
    );
  }
}

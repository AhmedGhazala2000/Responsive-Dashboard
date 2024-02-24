import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/income_chart_model.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({Key? key}) : super(key: key);

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  final List<IncomeChartModel> pieChartSectionData = const [
    IncomeChartModel(value: 22, color: Color(0xffE2DECD)),
    IncomeChartModel(value: 20, color: Color(0xff064061)),
    IncomeChartModel(value: 25, color: Color(0xff4EB7F2)),
    IncomeChartModel(value: 40, color: Color(0xff208CC8)),
  ];
  int? hoverIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        PieChartData(
          pieTouchData: PieTouchData(
            enabled: true,
            touchCallback: (p0, pieTouchResponse) {
              hoverIndex =
                  pieTouchResponse?.touchedSection?.touchedSectionIndex;
              setState(() {});
            },
          ),
          sectionsSpace: 0,
          sections: List.generate(
            4,
            (index) => buildPieChartSectionData(
              data: pieChartSectionData[index],
              isHover: hoverIndex == index,
            ),
          ),
        ),
      ),
    );
  }

  PieChartSectionData buildPieChartSectionData(
      {required IncomeChartModel data, required bool isHover}) {
    return PieChartSectionData(
      color: data.color,
      value: data.value,
      showTitle: false,
      radius: isHover ? 40 : 30,
    );
  }
}

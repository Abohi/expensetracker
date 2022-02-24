import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class PortfolioChart extends StatefulWidget {
  final List<double> portfolioData;
  const PortfolioChart({required this.portfolioData});

  @override
  State<PortfolioChart> createState() => _PortfolioChartState();
}

class _PortfolioChartState extends State<PortfolioChart> {
  int touchedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return PieChart(
      PieChartData(
        pieTouchData: PieTouchData(
            touchCallback: (pieTouchResponse) {
              setState(() {
                final desiredTouch =
                    pieTouchResponse.touchInput
                    is! PointerExitEvent &&
                        pieTouchResponse.touchInput
                        is! PointerUpEvent;
                if (desiredTouch &&
                    pieTouchResponse.touchedSection !=
                        null) {
                  touchedIndex = pieTouchResponse
                      .touchedSection!
                      .touchedSectionIndex;
                } else {
                  touchedIndex = -1;
                }
              });
              if (touchedIndex != -1) {

              }
            }),
        borderData: FlBorderData(
          show: false,
        ),
        sectionsSpace: 0,
        centerSpaceRadius: 100,
        sections: showingSections(
            widget.portfolioData, [const Color(0xffAD3336),const Color(0xff5D65AC)]),
      ),
    );
  }
  List<PieChartSectionData> showingSections(
      List<double> portfolioData, List<Color> portfolioColors) {
    if (portfolioData != null) {
      return portfolioData.asMap().keys.map((i) {
        final isTouched = i == touchedIndex;
        final fontSize = isTouched ? 20.0 : 16.0;
        final radius = isTouched ? 25.0 : 20.0;
        return PieChartSectionData(
          color: portfolioColors[i],
          value: portfolioData[i],
          title: "",
          showTitle: true,
          radius: radius,
          titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: const Color(0xffffffff)),
        );
      }).toList();
    } else {
      return [
        PieChartSectionData(
          color: const Color(0xff0293ee),
          value: 0.0,
          title: '',
          radius: 35.0,
          titleStyle: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Color(0xffffffff)),
        )
      ];
    }
  }
}
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:contraflutterkit/utils/colors.dart';

class SparkBar extends StatelessWidget {
  final List<OrdinalSales> data;
  final bool animate;

  SparkBar(this.data, {required this.animate});

  factory SparkBar.withSampleData() {
    return SparkBar(
      _createSampleData(),
      animate: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2,
      child: BarChart(
        BarChartData(
          alignment: BarChartAlignment.center,
          maxY: data.map((e) => e.sales).reduce((a, b) => a > b ? a : b).toDouble(),
          titlesData: FlTitlesData(show: false),
          borderData: FlBorderData(show: false),
          barGroups: data.asMap().entries.map((entry) {
            return BarChartGroupData(
              x: entry.key,
              barRods: [
                BarChartRodData(
                  toY: entry.value.sales.toDouble(),
                  color: entry.value.colorVal,
                  width: 16,
                  borderRadius: BorderRadius.zero,
                )
              ],
            );
          }).toList(),
        ),
        swapAnimationDuration: animate ? Duration(milliseconds: 150) : Duration.zero,
      ),
    );
  }

  static List<OrdinalSales> _createSampleData() {
    return [
      OrdinalSales(2007, 3100, selago),
      OrdinalSales(2008, 3500, bareley_white),
      OrdinalSales(2009, 5000, white),
      OrdinalSales(2010, 2500, lavandar_bush),
      OrdinalSales(2011, 3200, foam),
      OrdinalSales(2012, 4500, white),
      OrdinalSales(2013, 4500, white)
    ];
  }
}

class OrdinalSales {
  final int year;
  final int sales;
  final Color colorVal;

  OrdinalSales(this.year, this.sales, this.colorVal);
}

class BarChartSample3 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => BarChartSample3State();
}

class BarChartSample3State extends State<BarChartSample3> {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.2,
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        color: white,
        child: BarChart(
          BarChartData(
            backgroundColor: white,
            alignment: BarChartAlignment.center,
            maxY: 20,
            barTouchData: BarTouchData(
              enabled: false,
              touchTooltipData: BarTouchTooltipData(
                tooltipPadding: const EdgeInsets.all(0),
                tooltipMargin: 8,
                getTooltipItem: (
                    BarChartGroupData group,
                    int groupIndex,
                    BarChartRodData rod,
                    int rodIndex,
                    ) {
                  return BarTooltipItem(
                    rod.toY.round().toString(),
                    TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  );
                },
              ),
            ),
            titlesData: FlTitlesData(
              show: true,
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  getTitlesWidget: (double value, TitleMeta meta) {
                    return Text(
                      '',
                      style: TextStyle(
                        color: const Color(0xff7589a2),
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    );
                  },
                  reservedSize: 20,
                ),
              ),
              leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
              topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
              rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            ),
            borderData: FlBorderData(
                show: false, border: Border.all(width: 2, color: wood_smoke)),
            barGroups: [
              BarChartGroupData(x: 0, barRods: [
                BarChartRodData(
                    toY: 8,
                    width: 56,
                    color: selago,
                    borderRadius: BorderRadius.zero)
              ]),
              BarChartGroupData(x: 1, barRods: [
                BarChartRodData(
                    toY: 15,
                    width: 56,
                    borderRadius: BorderRadius.zero,
                    color: bareley_white)
              ]),
              BarChartGroupData(x: 2, barRods: [
                BarChartRodData(
                    toY: 12,
                    width: 56,
                    borderRadius: BorderRadius.zero,
                    color: pink_salomn)
              ]),
              BarChartGroupData(x: 3, barRods: [
                BarChartRodData(
                    toY: 16,
                    width: 56,
                    borderRadius: BorderRadius.zero,
                    color: lavandar_bush)
              ]),
              BarChartGroupData(x: 4, barRods: [
                BarChartRodData(
                    toY: 13,
                    width: 56,
                    borderRadius: BorderRadius.zero,
                    color: santas_gray)
              ]),
              BarChartGroupData(x: 5, barRods: [
                BarChartRodData(
                    toY: 6,
                    width: 56,
                    borderRadius: BorderRadius.zero,
                    color: selago)
              ]),
              BarChartGroupData(x: 6, barRods: [
                BarChartRodData(
                    toY: 8,
                    width: 56,
                    borderRadius: BorderRadius.zero,
                    color: foam)
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:contraflutterkit/utils/colors.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

/// Example of a Spark Bar by hiding both axis, reducing the chart margins.
class SparkBar extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  SparkBar(this.seriesList, {this.animate});

  factory SparkBar.withSampleData() {
    return new SparkBar(
      _createSampleData(),
      // Disable animations for image tests.
      animate: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return new charts.BarChart(
      seriesList,
      animate: animate,

      /// Assign a custom style for the measure axis.
      ///
      /// The NoneRenderSpec only draws an axis line (and even that can be hidden
      /// with showAxisLine=false).
      primaryMeasureAxis:
          new charts.NumericAxisSpec(renderSpec: new charts.NoneRenderSpec()),

      /// This is an OrdinalAxisSpec to match up with BarChart's default
      /// ordinal domain axis (use NumericAxisSpec or DateTimeAxisSpec for
      /// other charts).
      domainAxis: new charts.OrdinalAxisSpec(
          // Make sure that we draw the domain axis line.
          showAxisLine: false,
          // But don't draw anything else.
          renderSpec: new charts.NoneRenderSpec()),

      // With a spark chart we likely don't want large chart margins.
      // 1px is the smallest we can make each margin.
      layoutConfig: new charts.LayoutConfig(
          leftMarginSpec: new charts.MarginSpec.fixedPixel(0),
          topMarginSpec: new charts.MarginSpec.fixedPixel(0),
          rightMarginSpec: new charts.MarginSpec.fixedPixel(0),
          bottomMarginSpec: new charts.MarginSpec.fixedPixel(1)),
    );
  }

  /// Create series list with single series
  static List<charts.Series<OrdinalSales, String>> _createSampleData() {
    final globalSalesData = [
      new OrdinalSales(2007, 3100, selago),
      new OrdinalSales(2008, 3500, bareley_white),
      new OrdinalSales(2009, 5000, white),
      new OrdinalSales(2010, 2500, lavandar_bush),
      new OrdinalSales(2011, 3200, foam),
      new OrdinalSales(2012, 4500, white),
      new OrdinalSales(2012, 4500, white)
    ];

    return [
      new charts.Series<OrdinalSales, String>(
        id: 'Global Revenue',
        colorFn: (OrdinalSales sales, _) =>
            charts.ColorUtil.fromDartColor(sales.colorVal),
        domainFn: (OrdinalSales sales, _) => sales.year.toString(),
        measureFn: (OrdinalSales sales, _) => sales.sales,
        data: globalSalesData,
      ),
    ];
  }
}

/// Sample ordinal data type.
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
            groupsSpace: 0,
            alignment: BarChartAlignment.center,
            maxY: 20,
            barTouchData: BarTouchData(
              enabled: false,
              touchTooltipData: BarTouchTooltipData(
                tooltipBgColor: Colors.transparent,
                tooltipPadding: const EdgeInsets.all(0),
                tooltipBottomMargin: 8,
                getTooltipItem: (
                  BarChartGroupData group,
                  int groupIndex,
                  BarChartRodData rod,
                  int rodIndex,
                ) {
                  return BarTooltipItem(
                    rod.y.round().toString(),
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
              bottomTitles: SideTitles(
                showTitles: true,
                textStyle: TextStyle(
                    color: const Color(0xff7589a2),
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
                margin: 20,
                getTitles: (double value) {
                  switch (value.toInt()) {
                    case 0:
                      return '';
                    case 1:
                      return '';
                    case 2:
                      return '';
                    case 3:
                      return '';
                    case 4:
                      return '';
                    case 5:
                      return '';
                    case 6:
                      return '';
                    default:
                      return '';
                  }
                },
              ),
              leftTitles: SideTitles(showTitles: false),
            ),
            borderData: FlBorderData(
                show: false, border: Border.all(width: 2, color: wood_smoke)),
            barGroups: [
              BarChartGroupData(barsSpace: 0, x: 0, barRods: [
                BarChartRodData(
                    y: 8,
                    width: 56,
                    color: selago,
                    borderRadius: BorderRadius.all(Radius.circular(0)))
              ], showingTooltipIndicators: [
                0
              ]),
              BarChartGroupData(x: 1, barRods: [
                BarChartRodData(
                    y: 15,
                    width: 56,
                    borderRadius: BorderRadius.all(Radius.circular(0)),
                    color: bareley_white)
              ], showingTooltipIndicators: [
                0
              ]),
              BarChartGroupData(x: 2, barRods: [
                BarChartRodData(
                    y: 12,
                    width: 56,
                    borderRadius: BorderRadius.all(Radius.circular(0)),
                    color: pink_salomn)
              ], showingTooltipIndicators: [
                0
              ]),
              BarChartGroupData(x: 3, barRods: [
                BarChartRodData(
                    y: 16,
                    width: 56,
                    borderRadius: BorderRadius.all(Radius.circular(0)),
                    color: lavandar_bush)
              ], showingTooltipIndicators: [
                0
              ]),
              BarChartGroupData(x: 3, barRods: [
                BarChartRodData(
                    y: 13,
                    width: 56,
                    borderRadius: BorderRadius.all(Radius.circular(0)),
                    color: santas_gray)
              ], showingTooltipIndicators: [
                0
              ]),
              BarChartGroupData(x: 3, barRods: [
                BarChartRodData(
                    y: 6,
                    width: 56,
                    borderRadius: BorderRadius.all(Radius.circular(0)),
                    color: selago)
              ], showingTooltipIndicators: [
                0
              ]),
              BarChartGroupData(x: 3, barRods: [
                BarChartRodData(
                    y: 8,
                    width: 56,
                    borderRadius: BorderRadius.all(Radius.circular(0)),
                    color: foam)
              ], showingTooltipIndicators: [
                0
              ]),
            ],
          ),
        ),
      ),
    );
  }
}

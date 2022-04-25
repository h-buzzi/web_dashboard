import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SimpleBarChart extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  SimpleBarChart(this.seriesList, {this.animate = false});

  /// Creates a [BarChart] with sample data and no transition.
  factory SimpleBarChart.withSampleData() {
    return new SimpleBarChart(
      _createSampleData(),
      // Disable animations for image tests.
      animate: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return new charts.BarChart(
      seriesList as List<charts.Series<dynamic, String>>,
      animate: animate,
    );
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<OrdinalSales, String>> _createSampleData() {
    final data = [
      new OrdinalSales(DateFormat('d-MMM').format(DateTime.now()), 40),
      new OrdinalSales(
          DateFormat('d-MMM')
              .format(DateTime.now().subtract(Duration(days: 1))),
          80),
      new OrdinalSales(
          DateFormat('d-MMM')
              .format(DateTime.now().subtract(Duration(days: 2))),
          100),
      new OrdinalSales(
          DateFormat('d-MMM')
              .format(DateTime.now().subtract(Duration(days: 3))),
          75),
      new OrdinalSales(
          DateFormat('d-MMM')
              .format(DateTime.now().subtract(Duration(days: 4))),
          85),
      new OrdinalSales(
          DateFormat('d-MMM')
              .format(DateTime.now().subtract(Duration(days: 5))),
          75),
      new OrdinalSales(
          DateFormat('d-MMM')
              .format(DateTime.now().subtract(Duration(days: 6))),
          65),
    ].reversed.toList();

    return [
      new charts.Series<OrdinalSales, String>(
        id: 'Deliveries',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (OrdinalSales sales, _) => sales.day_month,
        measureFn: (OrdinalSales sales, _) => sales.sales,
        data: data,
      )
    ];
  }
}

/// Sample ordinal data type.
class OrdinalSales {
  final String day_month;
  final int sales;

  OrdinalSales(this.day_month, this.sales);
}

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Data {
  Data(this.name, this.value);
  final String name;
  final double value;
}

class HorizontalBarGraph extends StatefulWidget {
  @override
  _HorizontalBarGraphState createState() => _HorizontalBarGraphState();
}

class _HorizontalBarGraphState extends State<HorizontalBarGraph> {
  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      primaryXAxis: CategoryAxis(
          isVisible: true,
          majorGridLines: const MajorGridLines(color: Colors.transparent),
          axisLine: const AxisLine(width: 0)),
      primaryYAxis: NumericAxis(
          isVisible: false,
          minimum: 0,
          maximum: 100,
          majorGridLines: const MajorGridLines(color: Colors.transparent),
          axisLine: const AxisLine(width: 0)),
      plotAreaBorderWidth: 0,
      series: <ChartSeries<Data, String>>[
        BarSeries<Data, String>(
            dataSource: [
              Data(
                'N',
                80,
              ),
              Data('P', 55),
              Data('K', 30),
            ],
            xValueMapper: (Data data, _) => data.name,
            yValueMapper: (Data data, _) => data.value,
            pointColorMapper: (Data data, _) => data.name == 'N'
                ? Colors.red
                : data.name == 'P'
                    ? Colors.green
                    : data.name == 'K'
                        ? Colors.blue
                        : Colors.transparent,
            isTrackVisible: false,
            width: 0.5,
            spacing: 0.03,
            trackColor: Colors.green,
            trackBorderColor: Colors.black,
            dataLabelSettings: const DataLabelSettings(
              isVisible: true,
            ),
            borderRadius: BorderRadius.circular(15)),
      ],
    );
  }
}

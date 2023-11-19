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
          isVisible: false,
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
                'Nitrogen',
                80,
              ),
              Data('Phosphorous', 55),
              Data('Potassium', 30),
            ],
            xValueMapper: (Data data, _) => data.name,
            yValueMapper: (Data data, _) => data.value,
            pointColorMapper: (Data data, _) => data.name == 'Nitrogen'
                ? Colors.red
                : data.name == 'Phosphorous'
                    ? Colors.green
                    : data.name == 'Potassium'
                        ? Colors.blue
                        : Colors.transparent,
            isTrackVisible: false,
            width: 0.4,
            spacing: 0.01,
            trackColor: Colors.green,
            trackBorderColor: Colors.black,
            dataLabelSettings: const DataLabelSettings(
              isVisible: false,
            ),
            borderRadius: BorderRadius.circular(15)),
      ],
    );
  }
}

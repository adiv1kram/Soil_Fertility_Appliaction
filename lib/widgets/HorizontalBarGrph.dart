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
      primaryXAxis: CategoryAxis(),
      primaryYAxis: NumericAxis(minimum: 0, maximum: 100),
      series: <ChartSeries<Data, String>>[
        BarSeries<Data, String>(
            dataSource: [
              Data('Nitrogen', 20,),
              Data('Phosphorous', 25),
              Data('Potassium', 30),
            ],
            xValueMapper: (Data data, _) => data.name,
            yValueMapper: (Data data, _) => data.value,
            isTrackVisible: true,
            width: 0.6,
            spacing: 0.3,
            trackColor: Colors.green,
            trackBorderColor: Colors.black,
            dataLabelSettings: DataLabelSettings(
              isVisible: true,
            ),
            borderRadius: BorderRadius.circular(15)),
      ],
    );
  }
}

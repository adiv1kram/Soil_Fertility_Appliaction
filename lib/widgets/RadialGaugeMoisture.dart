import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class RadialGaugeMoisture extends StatefulWidget {
  @override
  _RadialGaugeState createState() => _RadialGaugeState();
}

class _RadialGaugeState extends State<RadialGaugeMoisture> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SizedBox(
            height: 150,
            width: 150,
            child: SfRadialGauge(axes: <RadialAxis>[
              RadialAxis(
                minimum: 0,
                maximum: 100,
                showLabels: false,
                showTicks: false,
                axisLineStyle: const AxisLineStyle(
                  thickness: 0.3,
                  cornerStyle: CornerStyle.bothCurve,
                  color: Color.fromARGB(30, 0, 169, 181),
                  thicknessUnit: GaugeSizeUnit.factor,
                ),
                pointers: const <GaugePointer>[
                  RangePointer(
                    value: 45, //progressValue,
                    cornerStyle: CornerStyle.bothCurve,
                    width: 0.3,
                    sizeUnit: GaugeSizeUnit.factor,
                  )
                ],
                annotations: const <GaugeAnnotation>[
                  GaugeAnnotation(
                    positionFactor: 0.1,
                    angle: 90,
                    widget: Text(
                      '45%',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}

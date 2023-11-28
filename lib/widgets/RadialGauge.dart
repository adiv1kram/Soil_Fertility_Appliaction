import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class RadialGaugeWidget extends StatefulWidget {
  @override
  _RadialGaugeState createState() => _RadialGaugeState();
}

class _RadialGaugeState extends State<RadialGaugeWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            children: [
              SizedBox(
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
                        value: 68, //progressValue,
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
                          '68 C',
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ],
                  )
                ]),
              ),
              const Text("Temperature  ")
            ],
          ),
        ),
      ),
    );
  }
}

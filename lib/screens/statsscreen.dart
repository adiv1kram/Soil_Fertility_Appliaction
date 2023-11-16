import 'package:flutter/material.dart';
import 'package:soil_analysis/widgets/HorizontalBarGrph.dart';
import 'package:soil_analysis/widgets/HorizontalCard.dart';

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:soil_analysis/widgets/RadialGauge.dart';
import 'package:soil_analysis/widgets/RadialGaugeMoisture.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class StatScreen extends StatefulWidget {
  @override
  State<StatScreen> createState() => _StatScreenState();
}

class _StatScreenState extends State<StatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          fit: StackFit.loose,
          children: [
            Column(
              children: [
                HorizontalCard(
                  title: 'Blank',
                  body: const Text('Blank Title'),
                  backgroundColor: const Color.fromARGB(255, 167, 177, 167),
                ),
                const SizedBox(
                  height: 12,
                ),
                HorizontalBarGraph(),
                Row(
                  children: [
                    RadialGauge(),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

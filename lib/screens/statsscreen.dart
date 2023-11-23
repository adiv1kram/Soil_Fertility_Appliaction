import 'package:flutter/material.dart';
import 'package:soil_analysis/widgets/HorizontalBarGrph.dart';
import 'package:soil_analysis/widgets/HorizontalCard.dart';

import 'dart:async';

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
        body: Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
        Color(0xffa8edea),
        Color(0xfffed6e3),
      ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              HorizontalCard(
                title: "Blank",
                body: const Text(
                  "Blank",
                ),
                backgroundColor: Colors.blueGrey,
              ),
              HorizontalBarGraph(),
              AspectRatio(
                aspectRatio: 2,
                child: Row(
                  children: [
                    AspectRatio(
                      aspectRatio: 1,
                      child: RadialGaugeWidget(),
                    ),
                    AspectRatio(
                      aspectRatio: 1,
                      child: RadialGaugeMoisture(),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}

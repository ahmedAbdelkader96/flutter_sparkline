import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_sparkline/flutter_sparkline.dart';

math.Random random = new math.Random();

List<double> _generateRandomData(int count) {
  List<double> result = <double>[];
  for (int i = 0; i < count; i++) {
    result.add(random.nextDouble() * 100);
  }
  return result;
}

void main() {
  var data = _generateRandomData(50);
  runApp(
     MaterialApp(
      home:  Scaffold(
        body:  Center(
          child:  Container(
            width: 300.0,
            height: 100.0,
            child:  Sparkline(
              data: data,
              lineColor: Colors.lightGreen[500],
              fillMode: FillMode.below,
              fillColor: Colors.lightGreen[200],
              pointsMode: PointsMode.all,
              pointSize: 5.0,
              pointColor: Colors.amber,
            ),
          ),
        ),
      ),
    ),
  );
}

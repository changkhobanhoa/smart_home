import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import 'package:sliding_switch/sliding_switch.dart';
import 'package:smart_home/screens/home/custome_switch.dart';
import 'dart:math' as math;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  bool status = false;
  double _rotation = 0.0; // Góc quay của gradient
  late AnimationController controllerAnimation;

  @override
  void initState() {
    controllerAnimation = AnimationController(
      vsync: this,
      duration: Duration(seconds: 5),
    )..addListener(() {
        setState(() {
          _rotation = controllerAnimation.value * 2 * math.pi;
        });
      });
    controllerAnimation.repeat();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CustomPaint(
                painter: _ThermostatPainter(30),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _ThermostatPainter extends CustomPainter {
  // Define a constant for the maximum temperature range
  static const double _maxTemperature = 40;

  // Define a field to store the temperature value
  final double temperature;

  // Define a constructor that accepts the temperature value
  _ThermostatPainter(this.temperature);

  @override
  void paint(Canvas canvas, Size size) {
    // Define a Paint object to set the style and color of the dial
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10
      ..color = Colors.blue;

    // Define an Offset object to represent the center of the dial
    final center = Offset(size.width / 2, size.height / 2);

    // Define a double value to represent the radius of the dial
    final radius = size.width / 2 - 10;

    // Define a Rect object to represent the bounding box of the dial
    final rect = Rect.fromCircle(center: center, radius: radius);

    // Define a double value to represent the start angle of the dial arc in radians
    final startAngle = -5 * pi / 4;

    // Define a double value to represent the sweep angle of the dial arc in radians
    final sweepAngle = (temperature / _maxTemperature) * (3 * pi / 2);

    // Draw the dial arc using the canvas, paint, rect, startAngle, and sweepAngle values
    canvas.drawArc(rect, startAngle, sweepAngle, false, paint);

    // Define another Paint object to set the style and color of the dial text
    final textPaint = Paint()
      ..style = PaintingStyle.fill
      ..color = Colors.black;

    // Define a TextPainter object to render the text on the canvas
    final textPainter = TextPainter(
      text: TextSpan(
        text: 'Room Temp',
        style: TextStyle(fontSize: 24),
      ),
      textAlign: TextAlign.center,
      textDirection: TextDirection.ltr,
    );

    // Layout the text using the size of the container as constraints
    textPainter.layout(maxWidth: size.width);

    // Paint the text on the canvas using the center offset as origin
    textPainter.paint(
        canvas, center - Offset(textPainter.width / 2, textPainter.height / 2));
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // Return true if the temperature value has changed
    return temperature != (oldDelegate as _ThermostatPainter).temperature;
  }
}

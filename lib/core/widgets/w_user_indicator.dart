import 'package:flutter/material.dart';
import 'dart:math' as math;

class WuserProgressIndicator extends StatelessWidget {
  final double value;
  final double strokeWidth;
  final Color trackColor;
  final Color progressColor;
  final double trackCornerRadius;
  final double circleSize;

  const WuserProgressIndicator({
    super.key,
    required this.value,
    required this.strokeWidth,
    required this.trackColor,
    required this.progressColor,
    required this.trackCornerRadius,
    required this.circleSize,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(circleSize, circleSize),
      painter: _CircularProgressPainter(
        value: value,
        strokeWidth: strokeWidth,
        trackColor: trackColor,
        progressColor: progressColor,
        trackCornerRadius: trackCornerRadius,
      ),
    );
  }
}

class _CircularProgressPainter extends CustomPainter {
  final double value;
  final double strokeWidth;
  final Color trackColor;
  final Color progressColor;
  final double trackCornerRadius;

  _CircularProgressPainter({
    required this.value,
    required this.strokeWidth,
    required this.trackColor,
    required this.progressColor,
    required this.trackCornerRadius,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final Paint trackPaint = Paint()
      ..color = trackColor
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    final Paint progressPaint = Paint()
      ..color = progressColor
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    final double radius = (size.width / 2) - (strokeWidth / 2);
    final Offset center = Offset(size.width / 2, size.height / 2);
    final double startAngle = -math.pi / 2;
    final double sweepAngle = 2 * math.pi * value;

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      startAngle,
      2 * math.pi,
      false,
      trackPaint,
    );

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      startAngle,
      sweepAngle,
      false,
      progressPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

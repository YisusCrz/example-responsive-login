import 'package:flutter/material.dart';

class CircleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: CustomPaint(
          painter: _CircleWidgetPainter(),
        ),
      ),
    );
  }
}

class _CircleWidgetPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final paint = new Paint();

    paint..strokeWidth = 30
          ..color = Colors.white
          ..style = PaintingStyle.stroke;

    canvas.drawCircle(Offset(size.width * .5, size.height * 0.5), 90, paint);
  }
  
    @override
    bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}
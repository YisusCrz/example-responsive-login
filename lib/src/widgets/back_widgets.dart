import 'package:flutter/material.dart';

class CircleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: CustomPaint(
          painter: _CircleWidgetPainter(context),
        ),
      ),
    );
  }
}

class _CircleWidgetPainter extends CustomPainter{

  final BuildContext context;

  _CircleWidgetPainter(this.context);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = new Paint();

    paint..strokeWidth = 30
          ..color = Theme.of(context).scaffoldBackgroundColor
          ..style = PaintingStyle.stroke;

    canvas.drawCircle(Offset(size.width * .5, size.height * 0.5), 70, paint);
  }
  
    @override
    bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}

class RectangleBordedWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: CustomPaint(
          painter: _RectangleBorderWidget(),
        ),
      ),
    );
  }
}


class _RectangleBorderWidget extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = new Paint();

    paint..color = Colors.grey.withOpacity(0.4)
          ..strokeWidth = 30
          ..style = PaintingStyle.stroke;
    
    final rect = new Rect.fromCenter(
      center: Offset( size.width * 0.5, size.height * 0.5 ),
      height: 130,
      width: 130
    );

    final rrect = new RRect.fromRectAndRadius(rect, Radius.circular(40));

    canvas.drawRRect(rrect, paint);

  }
  
    @override
    bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}
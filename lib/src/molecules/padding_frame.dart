import 'package:flutter/material.dart';
import 'package:path_drawing/path_drawing.dart';

class PaddingFrame extends StatelessWidget {
  const PaddingFrame({this.width, this.height, this.intPadding, this.extPadding});

  final double width, height, intPadding, extPadding;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints consraints){
        return CustomPaint(
          painter: _DashPathPainter(
            width: width,
            height: height,
            intPadding: intPadding,
            extPadding: extPadding
          ),
        );
      },
    );
  }
  
}

class _DashPathPainter extends CustomPainter {
  _DashPathPainter({this.width, this.height, this.intPadding, this.extPadding});

  final double width, height, intPadding, extPadding;
  
  @override
  bool shouldRepaint(_DashPathPainter oldDelegate) => true;

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawPath(
      dashPath(
        Path()
        ..addRect(Rect.fromLTRB(
        0,
        0, 
        width+ extPadding ,
        height + extPadding,
        ))
        ..addRect(Rect.fromLTRB(
        0,
        0, 
        width - intPadding ,
        height - intPadding,
        )),
        dashArray: CircularIntervalList<double>(
          <double>[5.0, 5.0],
        ),
      ),
      Paint()
      ..color = Colors.cyanAccent
      ..strokeWidth = 2.0
      ..style = PaintingStyle.stroke
    );
    
  }
}
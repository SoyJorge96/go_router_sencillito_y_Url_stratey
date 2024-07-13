import 'package:flutter/material.dart';

class HeaderRectangle extends StatelessWidget {
  const HeaderRectangle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      color: Colors.orangeAccent,
    );
  }
}

class HeaderRectangleBorder extends StatelessWidget {
  const HeaderRectangleBorder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      decoration: const BoxDecoration(
        color: Colors.orangeAccent,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50),
          bottomRight: Radius.circular(50),
        ),
      ),
    );
  }
}

class HeaderDiagonal extends StatelessWidget {
  const HeaderDiagonal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _DiagonalPainter(),
      ),
    );
  }
}

class _DiagonalPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    paint.color = Colors.orange;
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 5;

    final path = Path();

    path.lineTo(0, size.height * 0.4);
    path.lineTo(size.width * 0.5, size.height * 0.6);
    path.lineTo(size.width, size.height * 0.4);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(_DiagonalPainter oldDelegate) => true;
}

class HeaderTriangular extends StatelessWidget {
  const HeaderTriangular({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _TrianglePainter(),
      ),
    );
  }
}

class _TrianglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    paint.color = Colors.purple;
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 5;

    final path = Path();

    path.lineTo(0, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(_TrianglePainter oldDelegate) => true;

  @override
  bool shouldRebuildSemantics(_TrianglePainter oldDelegate) => false;
}

class HeaderCurvita extends StatelessWidget {
  const HeaderCurvita({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: CustomPaint(
        painter: _CurvitaPainter(),
      ),
    );
  }
}

class _CurvitaPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    paint.color = Colors.deepPurpleAccent;
    paint.strokeWidth = 5;
    paint.style = PaintingStyle.fill;

    final path = Path();

    path.lineTo(0, size.height * 0.4);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.3,
        size.width * 0.5, size.height * 0.4);
    path.quadraticBezierTo(
        size.width * 0.75, size.height * 0.5, size.width, size.height * 0.4);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(_CurvitaPainter oldDelegate) => true;

  @override
  bool shouldRebuildSemantics(_CurvitaPainter oldDelegate) => false;
}

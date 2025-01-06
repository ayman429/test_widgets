import 'package:flutter/material.dart';

class ContainerClip extends StatelessWidget {
  const ContainerClip({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Stack(
          children: [
            // Shadow Layer
            CustomPaint(
              size: const Size(200, 300),
              painter: ShadowPainter(),
            ),
            // Main Container with Clipping and Dashed Lines
            ClipPath(
              clipper: CustomInwardHalfCircleClipper(),
              child: Container(
                width: 200,
                height: 300,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: CustomPaint(
                    painter: DashedLinePainter(),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 200,
              height: 300,
              child: Column(
                children: [
                  SizedBox(
                    width: 200,
                    height: 150,
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 30),
                        Text("data"),
                        Text("data"),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 200,
                    height: 150,
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 30),
                        Text("data"),
                        Text("data"),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomInwardHalfCircleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    double width = size.width;
    double height = size.height;

    double circleWidth = 30.0; // Width of the inward half-circle
    double circleHeight = 30.0; // Height of the inward half-circle

    // Start at the top-left corner
    path.moveTo(0, 0);

    // Draw the top edge
    path.lineTo(width, 0);

    // Draw the right inward half-circle
    path.lineTo(width,
        height / 2 - circleHeight / 2); // Move to the top of the inward circle
    path.quadraticBezierTo(
      width - circleWidth / 2, // Control point X
      height / 2, // Control point Y
      width, // End point X
      height / 2 + circleHeight / 2, // End point Y
    );

    // Draw the bottom edge
    path.lineTo(width, height);
    path.lineTo(0, height);

    // Draw the left inward half-circle
    path.lineTo(
        0,
        height / 2 +
            circleHeight / 2); // Move to the bottom of the inward circle
    path.quadraticBezierTo(
      circleWidth / 2, // Control point X
      height / 2, // Control point Y
      0, // End point X
      height / 2 - circleHeight / 2, // End point Y
    );

    // Close the path
    path.lineTo(0, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class ShadowPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path = CustomInwardHalfCircleClipper().getClip(size);

    Paint paint = Paint()
      ..color = Colors.black.withOpacity(0.2)
      ..style = PaintingStyle.fill
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 10);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class DashedLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.grey
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    double dashWidth = 10;
    double dashSpace = 5;

    double startX = size.width; // Start from the right inward half-circle
    double endX = 0; // End at the left inward half-circle
    double centerY = size.height / 2;

    double x = startX;
    while (x > endX) {
      // Draw a line for the dash
      canvas.drawLine(
          Offset(x, centerY), Offset(x - dashWidth, centerY), paint);
      x -= dashWidth + dashSpace; // Move to the next dash position
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

import 'package:flutter/material.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 200,
      child: Stack(
        children: [
         CustomPaint(
          painter: HeaderPainter(),
          size: const Size(double.infinity, 200),

         ),
          Positioned(
            top: 20,
            left: 20,
            child: IconButton(
              onPressed: (){}, 
            icon: const Icon(
              Icons.menu,
              color: Colors.white),
            ),
          ),
          const Positioned(
            top: 35,
            right: 40,
            child: CircleAvatar(
              minRadius: 30,
              maxRadius: 30,
              foregroundImage: AssetImage('assets/profile3.jpg'),
            ), 
          ),
         const Positioned(
            left:33,
            bottom:20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello', 
                  style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                  fontSize: 20,
                  ),
                ),
                Text('George',
                 style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  ),
                  ),
            
            ],
            ),
          ),
        ],
      ),
    );
  }
}

class HeaderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint backColor = Paint()..color = const Color.fromARGB(255, 252, 113, 20);
    Paint circles = Paint()..color = Colors.white.withAlpha(45);

    canvas.drawRect(
      Rect.fromPoints (
       const Offset(0,0), 
        Offset(size.width, 
        size.height,),
    ), 
    backColor,
    );

    canvas.drawCircle(
      Offset(
        size.width * .65, 10), 30, circles);
        canvas.drawCircle(
      Offset(
        size.width * .60, 130), 10, circles);
        canvas.drawCircle(
      Offset(
        size.width -10, size.height -10), 20, circles);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
  }
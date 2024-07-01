import 'package:flutter/material.dart';

class Stats extends StatelessWidget {
  const Stats({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            children: [
              Text(
                'workout Stats',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w800,
                ),
                ),
                SizedBox(width: 8),
                Icon(
                Icons.pie_chart_rounded, 
                size: 15,
                color: Color.fromARGB(255, 240, 79, 5)
              ),
            ],
          ),
        ),
        SizedBox(height: 15),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(width: 12),
              InfoStat(
                icon: Icons.timer, 
                iconColor: Color.fromARGB(255, 128, 98, 248), 
                iconBackground: Color.fromARGB(255, 250, 247, 247), 
                time: '+5s', 
                label: 'Time', 
                value: '30.34',
                ),
                SizedBox(width: 20),
                InfoStat(
                icon: Icons.favorite_outline, 
                iconColor: Color.fromARGB(255, 247, 44, 166), 
                iconBackground:  Color.fromARGB(255, 250, 247, 247), 
                time: '+5s', 
                label: 'Heart Rate', 
                value: '151bpm',
                ),
                SizedBox(width: 20),
                InfoStat(
                icon: Icons.bolt, 
                iconColor: Color.fromARGB(255, 255, 245, 55), 
                iconBackground: Color.fromARGB(255, 247, 196, 213), 
                time: '+5s', 
                label: 'Energy', 
                value: '169kcal',
                ),
                SizedBox(width: 30),
            ],
          ),
        )
      ],
    );
  }
}


class InfoStat extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final Color iconBackground;
  final String time;
  final String label;
  final String value;

  const InfoStat({super.key, 
  required this.icon, 
  required this.iconColor, 
  required this.iconBackground, 
  required this.time, 
  required this.label, 
  required this.value,
  });
 
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: 110,
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.symmetric(vertical:5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: const Color.fromARGB(234, 255, 255, 255)
        ),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
        offset: Offset(3, 3), 
        blurRadius: 3,
        ),
      ],
      ),
      child: Stack(
        children: [
          StatIcon(
          icon: icon, 
          iconColor: iconColor, 
          iconBackground: iconBackground,
          ),
           Change(time: time),
           Align(
            alignment: Alignment.bottomLeft,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(label, style: const TextStyle(fontSize: 10),
              ),
              Text(value, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
              ),
           ],
           ),
           ),
          

        ],
      )
    );
  }
}

class Change extends StatelessWidget {
  const Change({
    super.key,
    required this.time,
  });

  final String time;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 1,
          horizontal: 4,
        ),
        decoration: BoxDecoration(
          color: Colors.green, 
          borderRadius: BorderRadius.circular(500),
        ),
       child: Text(
        time,
        style: const TextStyle(fontSize: 10, color: Colors.white),
        ),
      ),
    );
  }
}

class StatIcon extends StatelessWidget {
  const StatIcon({
    super.key,
    required this.icon,
    required this.iconColor,
    required this.iconBackground,
  });

  final IconData icon;
  final Color iconColor;
  final Color iconBackground;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
      color: iconBackground,
      borderRadius: BorderRadius.circular(9),
      ),
    child: Icon(
      icon, size: 15, color: iconColor
      ),
    );
  }
}
import 'dart:math';

import 'package:flutter/material.dart';

class RecentActivities extends StatelessWidget {
  const RecentActivities({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(
        vertical: 20, 
        horizontal: 30
        ),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recent Activities',
          style: Theme.of(context).textTheme.displayLarge,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) => 
              const ActivityItem(),
            ),
          ),
        ],
        ),
      ),
    );
  }
}

class ActivityItem extends StatelessWidget {
  const ActivityItem ({super.key});

  static const activities = [
    'Running',
    'Swimming',
    'Hiking',
    'Walking',
    'Cycling',
  ];

  @override

  Widget build(BuildContext context) {
    String activity = activities[Random().nextInt(activities.length)];

    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed('/details');
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical:5),
        height: 50,
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color.fromARGB(255, 244, 190, 110),
            ),
            borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
          const SizedBox(width: 10),
          Container(
            padding: const EdgeInsets.all(2),
            decoration: const BoxDecoration(
              shape:BoxShape.circle,
              color: Color.fromARGB(255, 247, 222, 191),
            ),
            height: 35,
            width: 35,
            child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/running.jpg'),
                  fit: BoxFit.fill,
      
                ),
              ),
            ),
            ),
            const SizedBox(width:20),
          Text(
            activity,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w900,
            ),
          ),
          const Expanded(child: SizedBox()),
          const Icon(Icons.timer, size: 12),
          const SizedBox(width:5),
          const Text(
            '30min', 
            style: TextStyle(
              fontSize: 10, 
              fontWeight: FontWeight.w300,
              ),
          ),
          const SizedBox(width: 10),
          const Icon(Icons.wb_sunny_outlined, size: 12),
          const SizedBox(width: 5),
          const Text('55kcal', 
          style: TextStyle(
            fontSize: 10, 
            fontWeight: FontWeight.w300
            ),
          ),
          const SizedBox(
            width: 20,
          ),
        ],
        ),
      ),
    );
  }
}
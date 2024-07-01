import 'package:fitness_tracker/helpers.dart';
import 'package:flutter/material.dart';

class Dates extends StatelessWidget {
  const Dates({super.key});

  @override
  Widget build(BuildContext context) {

    List<DateBox> dateBoxes = [];

    //DateTime date = DateTime.parse('2024-02-24');
    DateTime date = DateTime.now().subtract(const Duration(days: 3));

    for(int i=0; i<6; i++){
     dateBoxes.add(DateBox(date: date, active: i == 3));
     date = date.add(const Duration(days: 1));
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: dateBoxes,
          
      ),
    );
  }
}

class DateBox extends StatelessWidget {
  final bool active;
  final DateTime date;
  const DateBox({this.active = false, 
  required this.date,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 70,
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
      decoration: BoxDecoration(
        gradient: active ? const LinearGradient(
          colors:[ Color.fromARGB(255, 250, 2, 2),
          Color.fromARGB(255, 252, 119, 2),],
          begin: Alignment.topCenter ): null,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: const Color.fromARGB(235, 243, 23, 23),
        ),
      ),
      child: DefaultTextStyle.merge(
        style: active? const TextStyle(color: Color.fromARGB(241, 255, 255, 255)): null,
        child: Column(
          children: [
            Text(
              daysOfWeek[date.weekday]!,
            style:const  TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.bold,
          ),
          ),
          const SizedBox(height: 8), 
          Text(date.day.toString().padLeft(2, '0'),
           style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
          ),
          ],
        ),
      ),
    );
  }
}
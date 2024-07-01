import 'package:fitness_tracker/pages/details/details.dart';
import 'package:fitness_tracker/pages/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized(); // For bottom n topBar hiding
  SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.immersive
    );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fitness Tracker',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Roboto',
        textTheme: const TextTheme(
          displayLarge: TextStyle(
          fontSize: 14,
          color: Colors.black,
          fontWeight: FontWeight.w900,
        ),
        ),
      ),
      routes: {
        '/':(context) => const HomePage(),
        '/details':(context) => const DetailsPage(),
      },
      initialRoute: '/',
    );
  }
}

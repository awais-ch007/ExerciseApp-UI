import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
import 'constants.dart';
import 'Screens/HomePage.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

// ...

// ignore: non_constant_identifier_names

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exercise App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Cairo',
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:onboardingappv1/pages/onboarding.dart';

// void main() {
//   runApp(new MaterialApp(
//     title: "My App",
//     home: new MyApp(),
//   ));
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Onboarding App V1',
      home: Home(),
    );
  }
}

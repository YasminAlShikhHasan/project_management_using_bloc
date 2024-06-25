import 'package:flutter/material.dart';
import 'package:projectadminstrator_with_state_management/config/constant.dart';
import 'package:projectadminstrator_with_state_management/view/loginPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LogInPage(),
    );
  }
}

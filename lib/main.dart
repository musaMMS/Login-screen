import 'package:flutter/material.dart';
import 'package:whatsup_colon/splashScreen.dart';

const SAVE_KEY_NAME = 'UserLoggedIn';
void main() {
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ScreenSplash(),
    );
  }
}

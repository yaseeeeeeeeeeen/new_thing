import 'package:flutter/material.dart';
import 'package:new_thing_on_flutter/home/home_screen.dart';
import 'package:new_thing_on_flutter/themes/dark_theme.dart';

void main(List<String> args) {
  runApp(const NewThingOnFlutter());
}

class NewThingOnFlutter extends StatelessWidget {
  const NewThingOnFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: darkTheme,
      home: const HomeScreen(),
    );
  }
}

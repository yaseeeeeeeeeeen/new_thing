import 'package:flutter/material.dart';
import 'package:new_thing_on_flutter/themes/dark_theme.dart';


void main(List<String> args) {}

class NewThingOnFlutter extends StatelessWidget {
  const NewThingOnFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: darkTheme,
      home: const Placeholder(),
    );
  }
}

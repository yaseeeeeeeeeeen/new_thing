import 'package:flutter/material.dart';
import 'package:new_thing_on_flutter/themes/color_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const _HomeScreenView();
  }
}

class _HomeScreenView extends StatelessWidget {
  const _HomeScreenView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("HOME SCREEN"), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: ColorThemeData.mainColor.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(10)),
              child: const ListTile(
                subtitle: Text("Tap to check webview"),
                title: Text("WEB VIEW"),
                trailing: Icon(Icons.arrow_forward),
              ),
            )
          ],
        ),
      ),
    );
  }
}

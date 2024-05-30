import 'package:flutter/material.dart';
import 'package:new_thing_on_flutter/themes/color_theme.dart';
import 'package:new_thing_on_flutter/web_view/web_view_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return _HomeScreenView();
  }
}

class _HomeScreenView extends StatelessWidget {
  _HomeScreenView();
  final TextEditingController webLinkController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("HOME SCREEN"), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            customTile(
              hintText: "Enter Web Link here.",
              controller: webLinkController,
              title: "WEB VIEW",
              subTitle: "Tap to Check WebView",
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const WebViewScreen()));
              },
            )
          ],
        ),
      ),
    );
  }

  Container customTile(
      {required String title,
      required String subTitle,
      required TextEditingController controller,
      required String hintText,
      required void Function()? onTap}) {
    return Container(
      decoration: BoxDecoration(
          color: ColorThemeData.mainColor,
          borderRadius: BorderRadius.circular(10)),
      child: ExpansionTile(
        backgroundColor: ColorThemeData.mainColor,
        children: [
          CustomTextField(
            controller: controller,
            hintText: hintText,
          ),
          Container(
              margin: EdgeInsets.all(8),
              child: ElevatedButton(
                onPressed: () {},
                child: Text("SUBMIT"),
              ))
        ],
        title: Text(title),
        subtitle: Text(subTitle),
        trailing: const Icon(Icons.arrow_forward),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;

  CustomTextField({
    required this.controller,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(8, 0, 8, 5),
      padding: EdgeInsets.only(left: 10, top: 5, bottom: 5),
      decoration: BoxDecoration(
        color: Colors.grey[200], // Change color as desired
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.black),
          border: InputBorder.none,
          contentPadding: EdgeInsets.zero,
        ),
      ),
    );
  }
}

// Example usage:
// CustomTextField(
//   controller: TextEditingController(),
//   hintText: 'Enter your text',
// )

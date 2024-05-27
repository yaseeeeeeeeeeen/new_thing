import 'package:flutter/material.dart';
import 'package:new_thing_on_flutter/themes/color_theme.dart';
import 'package:new_thing_on_flutter/web_view/web_view_screen.dart';

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
            customTile(
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
      required void Function()? onTap}) {
    return Container(
      decoration: BoxDecoration(
          color: ColorThemeData.mainColor,
          borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        onTap: onTap,
        title: Text(title),
        subtitle: Text(subTitle),
        trailing: const Icon(Icons.arrow_forward),
      ),
    );
  }
}

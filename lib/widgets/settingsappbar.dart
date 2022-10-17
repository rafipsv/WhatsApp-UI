import 'package:flutter/material.dart';
import 'package:whats_app_ui/screens/homepage.dart';
class SettingsAppBar extends StatelessWidget {
  const SettingsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xff075E54),
      leading: InkWell(
        onTap: () {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => const HomePage(),
              ),
              (route) => false);
        },
        child: const Padding(
          padding: EdgeInsets.only(left: 18),
          child: Icon(Icons.backspace),
        ),
      ),
      title: const Text(
        "Settings",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
      ),
    );
  }
}
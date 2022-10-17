import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Color.fromARGB(255, 224, 223, 223), width: 0.5),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10, left: 12),
            child: const CircleAvatar(
              radius: 27,
              backgroundImage: AssetImage("assets/images/rafi.jpg"),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          const Text(
            "Muhammad Fazlul karim",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

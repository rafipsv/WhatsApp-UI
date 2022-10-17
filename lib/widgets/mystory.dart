import 'package:flutter/material.dart';

class MyStory extends StatelessWidget {
  const MyStory({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 15, left: 12),
          child: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.bottomRight,
            children: [
              const CircleAvatar(
                radius: 27,
                backgroundImage: AssetImage("assets/images/rafi.jpg"),
              ),
              Positioned(
                top: 32,
                right: -3,
                child: Container(
                  padding: const EdgeInsets.all(3),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.greenAccent),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 15,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "My Status",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              "Tap to add status update",
              style: TextStyle(
                color: Colors.grey,
              ),
            )
          ],
        )
      ],
    );
  }
}

// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:whats_app_ui/info.dart';

class RecentUpdate extends StatelessWidget {
  const RecentUpdate({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        RecentStories(index: 1),
        RecentStories(index: 2),
        RecentStories(index: 3),
        RecentStories(index: 4),
        RecentStories(index: 5),
        RecentStories(index: 6),
      ],
    );
  }
}

class RecentStories extends StatelessWidget {
  final int index;
  const RecentStories({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(3.5),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color.fromARGB(255, 98, 185, 101),
          ),
          margin: const EdgeInsets.only(top: 10, left: 12),
          child: CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage(
              info[index]['profilePic'].toString(),
            ),
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              info[index]['name'].toString(),
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            Text(
              info[index]['time'].toString(),
              style: const TextStyle(
                color: Colors.grey,
              ),
            ),
          ],
        )
      ],
    );
  }
}

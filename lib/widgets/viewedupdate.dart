import 'package:flutter/material.dart';
import 'package:whats_app_ui/info.dart';

class ViewedUpdate extends StatelessWidget {
  const ViewedUpdate({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        ViewedStories(index: 2),
        ViewedStories(index: 4),
        ViewedStories(index: 6),
        ViewedStories(index: 8),
      ],
    );
  }
}

class ViewedStories extends StatelessWidget {
  final int index;
  const ViewedStories({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(3.5),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
          ),
          margin: const EdgeInsets.only(top: 7, left: 12),
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

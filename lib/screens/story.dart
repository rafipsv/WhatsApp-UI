// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:whats_app_ui/widgets/mystory.dart';
import 'package:whats_app_ui/widgets/rec_update_tag.dart';
import 'package:whats_app_ui/widgets/recentupdate.dart';
import 'package:whats_app_ui/widgets/viewedupdate.dart';

class Story extends StatelessWidget {
  const Story({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (() {}),
        backgroundColor: const Color.fromARGB(255, 55, 189, 173),
        child: const Icon(Icons.add_a_photo),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: ListView(children: const [
          MyStory(),
          SizedBox(height: 10),
          UpdateTag(
            label: "Recent Updates",
          ),
          RecentUpdate(),
          SizedBox(height: 10),
          UpdateTag(label: "Viewed Updates"),
          ViewedUpdate(),
        ]),
      ),
    );
  }
}

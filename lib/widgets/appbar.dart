import 'package:flutter/material.dart';
import 'package:whats_app_ui/screens/settings.dart';
import 'package:whats_app_ui/widgets/helper.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(110),
        child: Container(
          height: 50,
          color: const Color(0xff128C7E),
          child: TabBar(
            indicatorColor: Colors.white,
            indicatorWeight: 4,
            tabs: Helper.tabs,
            labelStyle: const TextStyle(fontWeight: FontWeight.w700),
            unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w500),
          ),
        ),
      ),
      elevation: 0,
      backgroundColor: const Color(0xff128C7E),
      centerTitle: false,
      title: const Padding(
        padding: EdgeInsets.only(left: 5, top: 5),
        child: Text(
          "WhatsApp",
          style: TextStyle(
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      actions: [
        const Padding(
          padding: EdgeInsets.only(
            right: 10,
            top: 5,
          ),
          child: Icon(Icons.search),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 5, top: 5),
          child: PopupMenuButton<int>(
            itemBuilder: ((context) {
              return const [
                PopupMenuItem(
                  value: 1,
                  child: Text(
                    "New group",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ),
                PopupMenuItem(
                  value: 2,
                  child: Text(
                    "New brodcast",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ),
                PopupMenuItem(
                  value: 3,
                  child: Text(
                    "Linked devices",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ),
                PopupMenuItem(
                  value: 4,
                  child: Text(
                    "Starred messeges",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ),
                PopupMenuItem(
                  value: 5,
                  child: Text(
                    "Settings",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ),
              ];
            }),
            onSelected: (value) {
              if (value == 5) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) {
                      return const Settings();
                    }),
                  ),
                );
              }
            },
          ),
        ),
      ],
    );
  }
}

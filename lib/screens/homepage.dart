import 'package:flutter/material.dart';
import 'package:whats_app_ui/widgets/appbar.dart';
import 'package:whats_app_ui/widgets/helper.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(110),
          child: MyAppBar(),
        ),
        body: TabBarView(
          children: Helper.tabView,
        ),
      ),
    );
  }
}

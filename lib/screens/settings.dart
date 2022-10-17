import 'package:flutter/material.dart';
import 'package:whats_app_ui/widgets/invite.dart';
import 'package:whats_app_ui/widgets/options.dart';
import 'package:whats_app_ui/widgets/profile.dart';
import 'package:whats_app_ui/widgets/settingsappbar.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(65), child: SettingsAppBar()),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            Profile(),
            Padding(
              padding: EdgeInsets.only(left: 5, bottom: 10),
              child: Options(
                iconData: Icons.key,
                option: "Account",
                desc: "Privacy, security, change number",
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5, bottom: 10),
              child: Options(
                iconData: Icons.chat,
                option: "Chats",
                desc: "Backup, history, wallpaper",
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5, bottom: 10),
              child: Options(
                iconData: Icons.notifications,
                option: "Notification",
                desc: "Messege, groups, & call tones",
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5, bottom: 10),
              child: Options(
                iconData: Icons.payments_outlined,
                option: "Payments",
                desc: "History, bank accounts",
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5, bottom: 10),
              child: Options(
                iconData: Icons.sd_storage_outlined,
                option: "Data and storage usage",
                desc: "Network usage, auto download",
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5, bottom: 10),
              child: Options(
                iconData: Icons.help_outline,
                option: "Help",
                desc: "FAQ, contact us, privacy policy",
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5, bottom: 10),
              child: InviteFriend(
                iconData: Icons.people,
                option: "Invite a friend",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

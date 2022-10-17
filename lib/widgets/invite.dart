import 'package:flutter/material.dart';

class InviteFriend extends StatelessWidget {
  final IconData iconData;
  final String option;
  const InviteFriend({super.key, required this.iconData, required this.option});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
        padding:
            const EdgeInsets.only(top: 10, left: 15, right: 15, bottom: 10),
        child: Row(
          children: [
            Icon(
              iconData,
              color: const Color(0xff128C7E),
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  option,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    ]);
  }
}

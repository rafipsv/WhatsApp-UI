import 'package:flutter/material.dart';

class Options extends StatelessWidget {
  final IconData iconData;
  final String option;
  final String desc;
  const Options({
    Key? key,
    required this.iconData,
    required this.option,
    required this.desc,
  }) : super(key: key);

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
                Text(
                  desc,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 112, 110, 110)),
                ),
              ],
            )
          ],
        ),
      ),
    ]);
  }
}

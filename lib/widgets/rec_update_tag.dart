import 'package:flutter/material.dart';

class UpdateTag extends StatelessWidget {
  final String label;
  const UpdateTag({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 2, bottom: 2, left: 15),
      height: 35,
      width: MediaQuery.of(context).size.width,
      color: const Color.fromARGB(255, 230, 226, 226),
      alignment: Alignment.centerLeft,
      child:  Text(
        label,
        style:const TextStyle(fontWeight: FontWeight.w500),
      ),
    );
  }
}

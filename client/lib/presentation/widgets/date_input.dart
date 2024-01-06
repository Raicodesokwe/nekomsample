import 'package:flutter/material.dart';

class DateInput extends StatelessWidget {
  final TextEditingController? controller;
  final void Function()? onTap;
  final String? hintText;
  const DateInput(
      {Key? key,
      required this.controller,
      required this.onTap,
      required this.hintText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        width: double.infinity,
        decoration: BoxDecoration(
            border:
                Border.all(color: Colors.black45.withOpacity(0.5), width: 2.0),
            color: Colors.white,
            borderRadius: BorderRadius.circular(10)),
        child: TextField(
          controller: controller,
          onTap: onTap,
          readOnly: true,
          decoration: InputDecoration(
            hintText: hintText,
            border: InputBorder.none,
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class TextBoxWidget extends StatelessWidget {
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;
  final String? hintText;
  final String? labelText;
  final Widget? suffixIcon;

  final TextEditingController? controller;
  const TextBoxWidget(
      {Key? key,
      this.onChanged,
      this.inputFormatters,
      this.labelText,
      this.validator,
      this.keyboardType,
      this.hintText,
      this.suffixIcon,
      this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        margin: EdgeInsets.symmetric(vertical: size.height * 0.01),
        padding: EdgeInsets.only(
            top: size.height * 0.002, bottom: size.height * 0.002, left: 20),
        width: double.infinity,
        decoration: BoxDecoration(
            border:
                Border.all(color: Colors.black45.withOpacity(0.5), width: 2.0),
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0)),
        child: TextFormField(
          keyboardType: keyboardType,
          inputFormatters: inputFormatters,
          controller: controller,
          validator: validator,
          onChanged: onChanged,
          cursorColor: Colors.black54,
          style: GoogleFonts.prompt(color: Colors.black54),
          decoration: InputDecoration(
              labelText: labelText,
              hintText: hintText,
              suffixIcon: suffixIcon,
              hintStyle: GoogleFonts.prompt(color: Colors.black54),
              border: InputBorder.none),
        ));
  }
}

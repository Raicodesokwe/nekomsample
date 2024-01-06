import 'package:flutter/material.dart';

class DropDownWidget extends StatefulWidget {
  final String? Function(String?)? validator;
  final String? selectedValue;
  final String? hintText;
  final double? hintFont;
  final List? dropdownData;
  final void Function(String?)? onChanged;
  const DropDownWidget(
      {Key? key,
      this.validator,
      this.selectedValue,
      this.hintFont,
      this.hintText,
      this.onChanged,
      this.dropdownData})
      : super(key: key);

  @override
  State<DropDownWidget> createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
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
      child: DropdownButtonFormField<String>(
          // validator: (value) =>validate(),
          isExpanded: true,
          validator: widget.validator,
          hint: Text(
            widget.hintText!,
            style: TextStyle(fontSize: widget.hintFont ?? 15),
          ),
          value: widget.selectedValue,
          icon: const Icon(
            Icons.arrow_drop_down,
            color: Colors.black,
          ),
          onChanged: widget.onChanged,
          items: widget.dropdownData!
              .toSet()
              .map<DropdownMenuItem<String>>((value) {
            return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value!,
                ));
          }).toList(),
          decoration: const InputDecoration(
            border: InputBorder.none,
          )),
    );
  }
}

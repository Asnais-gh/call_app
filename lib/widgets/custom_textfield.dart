import 'package:call_app/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// ignore: must_be_immutable
class CustemFormTextField extends StatelessWidget {
  CustemFormTextField({
    super.key,
    this.hinttext,
    this.onChanged,
    this.obscureText = false,
    this.textInputType, this.textInputFormatter,
  });
  final String? hinttext;
  Function(String)? onChanged;
  final bool? obscureText;
  final TextInputType? textInputType;
  final List<TextInputFormatter>? textInputFormatter;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText!,
      validator: (data) {
        if (data!.isEmpty) {
          return 'field is required';
        }
        return null;
      },
      onChanged: onChanged,
      cursorColor: kColor,
      keyboardType: textInputType,
      inputFormatters:textInputFormatter,
      textAlign: TextAlign.center,
      style: const TextStyle(color: Colors.black),
      decoration: InputDecoration(
        hintText: hinttext,
        hintStyle: const TextStyle(color: kColor),
        enabledBorder: buildDecor(),
        focusedBorder: buildDecor(),
        border: buildDecor(),
      ),
    );
  }

  OutlineInputBorder buildDecor() {
    return const OutlineInputBorder(
      borderSide: BorderSide(
        color: kColor,
      ),
      borderRadius: BorderRadius.all(Radius.circular(16)),
    );
  }
}

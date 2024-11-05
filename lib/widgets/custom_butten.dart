import 'package:call_app/const.dart';
import 'package:flutter/material.dart';

class CustomButten extends StatelessWidget {
  const CustomButten({super.key, required this.buttenText, this.onTap});
  final String buttenText;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: kColor,
          borderRadius: BorderRadius.circular(16),
        ),
        width: double.infinity,
        height: 60,
        child: Center(
            child: Text(buttenText,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold))),
      ),
    );
  }
}

import 'package:call_app/widgets/custom_app_bar.dart';
import 'package:call_app/widgets/dailpad.dart';
import 'package:flutter/material.dart';

class DialPadPage extends StatelessWidget {
  const DialPadPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomAppBar(),
        CustomDialPad(),
      ],
    );
  }
}

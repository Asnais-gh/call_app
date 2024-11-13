import 'package:call_app/widgets/custom_app_bar.dart';
import 'package:call_app/widgets/setting.dart';

import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(),
        Expanded(child: Setting()),
      ],
    );
  }
}

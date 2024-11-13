import 'package:call_app/widgets/call_history.dart';
import 'package:call_app/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class CallHistoryPage extends StatelessWidget {
  const CallHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomAppBar(),
        Expanded(child: CallHistory()),
      ],
    );
  }
}

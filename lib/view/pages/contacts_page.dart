import 'package:call_app/widgets/contacts.dart';
import 'package:call_app/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class ContactsPage extends StatelessWidget {
  const ContactsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomAppBar(),
        Expanded(child: Contacts()),
      ],
    );
  }
}

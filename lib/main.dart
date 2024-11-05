import 'package:call_app/view/log_in_page.dart';
import 'package:call_app/view/register_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CallApp());
}

class CallApp extends StatelessWidget {
  const CallApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: false),
        routes: {
        LoginPage.id: (context) => const LoginPage(),
        RegisterPage.id: (context) => const RegisterPage(),

      },
      initialRoute: LoginPage.id,
    );
  }
}

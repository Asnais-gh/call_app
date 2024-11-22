import 'package:call_app/view/LogInPages/otp_page.dart';
import 'package:call_app/view/LogInPages/phone_login_page.dart';
import 'package:call_app/view/home_page.dart';
import 'package:call_app/view/log_in_page.dart';
import 'package:call_app/view/LogInPages/user_name_login.dart';
import 'package:call_app/view/ongoing_call_page.dart';
import 'package:call_app/widgets/test.dart';
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
        HomePage.id:(context)=> const HomePage(),
        USerNameLogInPaage.id:(context) => const USerNameLogInPaage(),
        PhoneLogInPaage.id:(context)=> const PhoneLogInPaage(),
        OTPPage.id:(context)=> const OTPPage(),
        TestCall.id:(context)=> const TestCall(),
        OngoingCallPage.id:(context)=> const OngoingCallPage(),
      },
      initialRoute: LoginPage.id,
    );
  }
}

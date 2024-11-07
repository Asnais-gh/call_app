import 'package:call_app/const.dart';
import 'package:call_app/view/register_page.dart';
import 'package:call_app/widgets/custom_butten.dart';
import 'package:call_app/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});
  static String id = 'RegisterPage';

  @override
  Widget build(BuildContext context) {
    // Get screen width and height for responsive adjustments
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: screenHeight * 0.1123234916559692),
                  Image.asset(kLogo, height: screenHeight * 0.3369704749679076),
                  SizedBox(height: screenHeight * 0.0561617458279846),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'UK VOIP',
                        style: TextStyle(
                            fontSize: 40,
                            color: kColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: screenWidth * 0.0972222222222222),
                    child: Column(
                      children: [
                        CustemFormTextField(
                          hinttext: 'رقم هاتف',
                          textInputType: TextInputType.number,
                          textInputFormatter: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                        SizedBox(height: screenHeight * 0.0112323491655969),
                        CustemFormTextField(
                          hinttext: 'كلمة المرور',
                          obscureText: true,
                        ),
                        SizedBox(height: screenHeight * 0.0224646983311938),
                        const CustomButten(buttenText: 'تسجيل جديد'),
                      ],
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.1348314607),
                  Container(
                    height: screenHeight * 0.0561617458279846,
                    decoration: const BoxDecoration(
                      color: kColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Text(
                            '     هنا',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        const Text(
                          '  تملك حساب؟ يمكنك تسجيل الدخول من  ',
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

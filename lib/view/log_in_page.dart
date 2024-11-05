import 'package:call_app/const.dart';
import 'package:call_app/view/register_page.dart';
import 'package:call_app/widgets/custom_butten.dart';
import 'package:call_app/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  static String id = 'LoginPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(
            height: 100,
          ),
          Image.asset(
            kLogo,
            height: 300,
          ),
          const SizedBox(
            height: 50,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'UK VOIP',
                style: TextStyle(
                    fontSize: 40, color: kColor, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: [
                CustemFormTextField(
                  hinttext: 'رقم هاتف',
                  textInputType: TextInputType.number,
                  textInputFormatter: <TextInputFormatter>[
                    FilteringTextInputFormatter
                        .digitsOnly, // Restricts input to numbers only
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                CustemFormTextField(
                  hinttext: 'كلمة المرور',
                  obscureText: true,
                ),
                const SizedBox(
                  height: 20,
                ),
                const CustomButten(buttenText: 'تسجيل الدخول'),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, RegisterPage.id);
                      },
                      child: const Text(
                        '     حساب جديد',
                        style: TextStyle(color: kColor),
                      ),
                    ),
                    const Text(
                      ' لا تملك حساب؟ يمكنك تسجيل ',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                        width: double.infinity,
                        height: 50,
                        decoration: const BoxDecoration(
                          color: kColor,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(16),
                              topRight: Radius.circular(16)),
                        )),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

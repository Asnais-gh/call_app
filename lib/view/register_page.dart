import 'package:call_app/const.dart';
import 'package:call_app/widgets/custom_butten.dart';
import 'package:call_app/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});
  static String id = 'RegisterPage';
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
                const CustomButten(buttenText: 'تسجيل حساب جديد'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'dont\'t have an acount?',
                      style: TextStyle(color: Colors.white),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, RegisterPage.id);
                      },
                      child: const Text(
                        '    Register',
                        style: TextStyle(color: Color(0xffC7EDE6)),
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

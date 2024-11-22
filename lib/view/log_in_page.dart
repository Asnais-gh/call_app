import 'package:call_app/const.dart';
import 'package:call_app/view/LogInPages/phone_login_page.dart';
import 'package:call_app/widgets/custom_butten.dart';
import 'package:call_app/widgets/custom_text.dart';
import 'package:call_app/widgets/test.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  static String id = 'LoginPage';

  @override
  Widget build(BuildContext context) {
    // Get screen width and height for responsive adjustments
    final Size screenSize = MediaQuery.of(context).size;
    // Size(411.42857142857144, 890.2857142857143.3)

    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: screenSize.height * 0.1123234916559692),
          Image.asset(kLogo, height: screenSize.height * 0.3369704749679076),
          SizedBox(height: screenSize.height * 0.0561617458279846),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(
                text: 'UK VOIP',
                fontSize: screenSize.width * 0.0972222222222222,
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: screenSize.width * 0.0972222222222222),
            child: Column(
              children: [
                SizedBox(height: screenSize.height * 0.0224646983311938),
                CustomText(
                    text: ': تسجيل الدخول عبر',
                    fontSize: screenSize.width * 0.0486111111111111,
                    fontWeight: FontWeight.bold),
                SizedBox(height: screenSize.height * 0.0224646983311938),
                CustomButten(
                  buttenText: 'رقم الهاتف',
                  onTap: () {
                    Navigator.pushNamed(context, PhoneLogInPaage.id);
                  },
                ),
                SizedBox(height: screenSize.height * 0.0224646983311938),
                CustomButten(
                  buttenText: 'اسم المستخدم',
                  onTap: () {
                    Navigator.pushNamed(context, TestCall.id);
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: screenSize.height * 0.1348314607),
        ],
      ),
    );
  }
}







//  CustemFormTextField(
//                           hinttext: 'رقم هاتف',
//                           textInputType: TextInputType.number,
//                           textInputFormatter: <TextInputFormatter>[
//                             FilteringTextInputFormatter.digitsOnly,
//                           ],
//                         ),
//                         SizedBox(height: screenHeight * 0.0112323491655969),
//                         CustemFormTextField(
//                           hinttext: 'كلمة المرور',
//                           obscureText: true,
//                         ),











 // ###  custom bottom bar  ###  
  // Container(
  //                   height: screenHeight * 0.0561617458279846,
  //                   decoration: const BoxDecoration(
  //                     color: kColor,
  //                     borderRadius: BorderRadius.only(
  //                       topLeft: Radius.circular(16),
  //                       topRight: Radius.circular(16),
  //                     ),
  //                   ),
  //                   child: Row(
  //                     mainAxisAlignment: MainAxisAlignment.center,
  //                     children: [
  //                       GestureDetector(
  //                         onTap: () {
  //                           Navigator.pushNamed(context, RegisterPage.id);
  //                         },
  //                         child: const Text(
  //                           '     حساب جديد',
  //                           style: TextStyle(color: Colors.white),
  //                         ),
  //                       ),
  //                       const Text(
  //                         ' لا تملك حساب؟ يمكنك تسجيل ',
  //                         style: TextStyle(color: Colors.black),
  //                       ),
  //                     ],
  //                   ),
  //                 ),
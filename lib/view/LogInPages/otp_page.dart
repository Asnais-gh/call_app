// ignore_for_file: avoid_print

import 'package:call_app/const.dart';
import 'package:call_app/view/home_page.dart';

import 'package:call_app/widgets/custom_butten.dart';
import 'package:call_app/widgets/custom_otp_appbar.dart';
import 'package:call_app/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class OTPPage extends StatefulWidget {
  const OTPPage({super.key});
  static String id = 'OTPPage';

  @override
  OTPPageState createState() => OTPPageState();
}

class OTPPageState extends State<OTPPage> {
  List<TextEditingController> otpControllers =
      List.generate(6, (index) => TextEditingController());

  @override
  Widget build(BuildContext context) {
    // Get screen width and height for responsive adjustments
    final Size screenSize = MediaQuery.of(context).size;
    // Size(411.4285714285714, 890.2857142857143)
    double textFieldWidth = screenSize.width * 0.12; // Adjust width as needed
    double spaceBetweenFields = screenSize.width * 0.016;

    return Scaffold(
      body: Column(
        children: [
          CustomOtpAppBar(),
          Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomText(
                text: 'Enter the 6-digit code sent to you',
                fontSize: screenSize.width * 0.0388888888888889, //16
                fontWeight: FontWeight.bold,
                textAlign: TextAlign.center,
              ),

              SizedBox(height: screenSize.height * 0.0224646983311938), //20
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(6, (index) {
                  return Container(
                    width: textFieldWidth,
                    margin:
                        EdgeInsets.symmetric(horizontal: spaceBetweenFields),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              screenSize.width * 0.0243055555555556), //10
                          gradient: kGradient),
                      padding: EdgeInsets.all(
                          screenSize.width * 0.0048611111111111), //2
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(screenSize.width *
                              0.0194444444444444), //824/ // Inner border radius
                          color: Colors
                              .white, // Background color for the text field
                        ),
                        child: TextField(
                          controller: otpControllers[index],
                          keyboardType: TextInputType.number,
                          cursorColor: Color(0xFF800080),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize:
                                  screenSize.width * 0.0583333333333333, //24
                              fontWeight: FontWeight.bold),
                          maxLength: 1, // Only one digit per field
                          decoration: InputDecoration(
                            counterText: '', // Hide the character counter
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          ),
                          onChanged: (value) {
                            if (value.isNotEmpty && index < 5) {
                              FocusScope.of(context)
                                  .nextFocus(); // Move to the next field
                            } else if (value.isEmpty && index > 0) {
                              // Move focus to the previous field if the current field is emptied
                              FocusScope.of(context).previousFocus();
                            }
                          },
                        ),
                      ),
                    ),
                  );
                }),
              ),
              SizedBox(height: screenSize.height * 0.0336970474967908), //30
              CustomButten(
                  width: textFieldWidth * 3.5,
                  buttenText: 'Verify OTP',
                  onTap: () {
                    _verifyOTP();
                    Navigator.pushNamed(context, HomePage.id);
                  })
            ],
          ),
          Spacer(),
        ],
      ),
    );
  }

  void _verifyOTP() {
    // Gather the OTP from all controllers
    String otp = otpControllers.map((controller) => controller.text).join();
    // Do something with the OTP, like verifying with a backend
    print("Entered OTP: $otp");
  }
}

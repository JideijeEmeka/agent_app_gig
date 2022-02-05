import 'package:agent_app/helpers/app_colors.dart';
import 'package:agent_app/views/congratulations_view.dart';
import 'package:agent_app/widgets/btn_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class Otp extends StatefulWidget {
  const Otp({Key? key}) : super(key: key);

  @override
  _OtpState createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 86,
            ),
            Text(
              "Please verify your account",
              style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: AppColors.headerColor,
                      fontStyle: FontStyle.normal)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text(
                "Please enter the code sent to your email address",
                style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: AppColors.textColor,
                        fontStyle: FontStyle.normal)),
              ),
            ),
            PinCodeTextField(
                appContext: context,
                length: 4,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  fieldWidth: 50,
                  fieldHeight: 40,
                  borderRadius: BorderRadius.circular(6),
                ),
                enableActiveFill: false,
                backgroundColor: Colors.transparent,
                keyboardType: TextInputType.number,
                boxShadows: const [
                  BoxShadow(
                    offset: Offset(0, 0),
                    color: AppColors.lightGreyColor,
                    blurRadius: 50,
                  ),
                ],
                blinkWhenObscuring: true,
                animationType: AnimationType.slide,
                onCompleted: (v) {},
                onChanged: (val) {}),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: btnWidget(context, "Verify account", onTap: () => 
              Navigator.push(context, MaterialPageRoute(builder: 
              (context) => const CongratulationsView()))),
            )
          ],
        ),
      ),
    );
  }
}
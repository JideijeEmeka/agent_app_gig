import 'package:agent_app/helpers/app_colors.dart';
import 'package:agent_app/views/congratulations_view.dart';
import 'package:agent_app/widgets/btn_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VerifyEmailView extends StatefulWidget {
  const VerifyEmailView({Key? key}) : super(key: key);

  @override
  _VerifyEmailViewState createState() => _VerifyEmailViewState();
}

class _VerifyEmailViewState extends State<VerifyEmailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.symmetric(horizontal: 23),
          child: Column(
            children: [
              const SizedBox(
                height: 200,
              ),
              Image.asset("assets/images/email-verification.png"),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 9),
                child: Text(
                  "Please verify your email",
                  style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: AppColors.headerColor,
                          fontStyle: FontStyle.normal)),
                ),
              ),
              Text(
                "To verify your mail please click \non the link in the email we \nsent to you",
                style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                        fontSize: 12,
                        height: 1.5,
                        fontWeight: FontWeight.w400,
                        color: AppColors.blackColor,
                        fontStyle: FontStyle.normal)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 41, bottom: 28),
                child: btnWidget(context, "Open email app", onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CongratulationsView()));
                }),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account? ",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColors.lightGreyColor,
                            fontStyle: FontStyle.normal)),
                  ),
                  Text(
                    "Sign in",
                    style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: AppColors.lightGreyColor,
                            fontStyle: FontStyle.normal)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

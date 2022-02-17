import 'package:agent_app/helpers/app_colors.dart';
import 'package:agent_app/views/sign_in.dart';
import 'package:agent_app/views/verify_forgotten_email_view.dart';
import 'package:agent_app/widgets/btn_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class ForgotPasswordView extends StatefulWidget {
  const ForgotPasswordView({Key? key}) : super(key: key);

  @override
  _ForgotPasswordViewState createState() => _ForgotPasswordViewState();
}

class _ForgotPasswordViewState extends State<ForgotPasswordView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 150,
              ),
              Image.asset("assets/images/lock.png"),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Text(
                  "Forgot your password?",
                  style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: AppColors.headerColor,
                          fontStyle: FontStyle.normal)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Text(
                  "Enter your registered email below to receive passord reset information",
                  style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                          fontSize: 13.5,
                          height: 1.5,
                          fontWeight: FontWeight.w400,
                          color: AppColors.blackColor,
                          fontStyle: FontStyle.normal)),
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Enter email address",
                    hintStyle: GoogleFonts.inter(
                        textStyle: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: AppColors.hintTextColor,
                            fontStyle: FontStyle.normal)),
                    contentPadding: const EdgeInsets.only(left: 16),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4))),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 40),
                child: btnWidget(context, "Request email reset", onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const VerifyForgottenEmailView()));
                }),
              ),
              InkWell(
                onTap: () => Navigator.push(
                    context,
                    PageTransition(
                        child: const SignInView(),
                        type: PageTransitionType.leftToRight,
                        duration: const Duration(milliseconds: 400))),
                child: Text(
                  "Go back to Login",
                  style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColors.blackColor,
                          fontStyle: FontStyle.normal)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

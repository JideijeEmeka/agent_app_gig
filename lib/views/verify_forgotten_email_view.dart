import 'package:agent_app/helpers/app_colors.dart';
import 'package:agent_app/views/create_password_view.dart';
import 'package:agent_app/widgets/btn_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VerifyForgottenEmailView extends StatefulWidget {
  const VerifyForgottenEmailView({Key? key}) : super(key: key);

  @override
  _VerifyEmailViewState createState() => _VerifyEmailViewState();
}

class _VerifyEmailViewState extends State<VerifyForgottenEmailView> {
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
                padding: const EdgeInsets.only(top: 30, bottom: 30),
                child: Text(
                  "Please check your email",
                  style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: AppColors.headerColor,
                          fontStyle: FontStyle.normal)),
                ),
              ),
              Text(
                "We have sent a password recovery \ninformation to your mail",
                style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                        fontSize: 12,
                        height: 1.5,
                        fontWeight: FontWeight.w400,
                        color: AppColors.blackColor,
                        fontStyle: FontStyle.normal)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 30),
                child: btnWidget(context, "Open email app", onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CreatePasswordView()));
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

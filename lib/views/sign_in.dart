import 'package:agent_app/helpers/app_colors.dart';
import 'package:agent_app/views/forgot_password_view.dart';
import 'package:agent_app/widgets/btn_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInView extends StatefulWidget {
  const SignInView({Key? key}) : super(key: key);

  @override
  _SignInViewState createState() => _SignInViewState();
}

bool checkedValue = false;

class _SignInViewState extends State<SignInView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 23),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 200,
              ),
              Text(
                "Sign In",
                style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: AppColors.headerColor,
                        fontStyle: FontStyle.normal)),
              ),
              //email
              Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 9),
                child: Text(
                  "Email Address",
                  style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: AppColors.textColor,
                          fontStyle: FontStyle.normal)),
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Enter Value",
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
              //password
              Padding(
                padding: const EdgeInsets.only(top: 19, bottom: 4),
                child: Text(
                  "Password",
                  style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: AppColors.textColor,
                          fontStyle: FontStyle.normal)),
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Enter Value",
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
                padding: const EdgeInsets.only(top: 41, bottom: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          height: 20,
                          width: 20,
                          child: Transform.scale(
                            scale: 0.85,
                            child: Checkbox(
                                value: checkedValue,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(2)),
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                onChanged: (newValue) {
                                  setState(() {
                                    checkedValue = newValue!;
                                  });
                                }),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7),
                          child: Text(
                            "Remember me",
                            style: GoogleFonts.inter(
                                textStyle: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.greyColor,
                                    fontStyle: FontStyle.normal)),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "Forgot Password?",
                      style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: AppColors.greyColor,
                              fontStyle: FontStyle.normal)),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 28),
                child: btnWidget(context, "Sign in", onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ForgotPasswordView()));
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
                    "Register",
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
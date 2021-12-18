import 'package:agent_app/helpers/app_colors.dart';
import 'package:agent_app/views/register_step2_view.dart';
import 'package:agent_app/views/sign_in.dart';
import 'package:agent_app/widgets/btn_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class RegisterStep1View extends StatefulWidget {
  const RegisterStep1View({Key? key}) : super(key: key);

  @override
  _RegisterStep1ViewState createState() => _RegisterStep1ViewState();
}

class _RegisterStep1ViewState extends State<RegisterStep1View> {
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
                height: 86,
              ),
              Text(
                "Register",
                style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: AppColors.headerColor,
                        fontStyle: FontStyle.normal)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 7),
                child: Text(
                  "Step 1 of 3",
                  style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: AppColors.textColor,
                          fontStyle: FontStyle.normal)),
                ),
              ),
              //first name
              Padding(
                padding: const EdgeInsets.only(top: 19, bottom: 4),
                child: Text(
                  "First Name",
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
              //last name
              Padding(
                padding: const EdgeInsets.only(top: 19, bottom: 4),
                child: Text(
                  "Last Name",
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
              //company
              Padding(
                padding: const EdgeInsets.only(top: 19, bottom: 4),
                child: Text(
                  "Company",
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
              //phone number
              Padding(
                padding: const EdgeInsets.only(top: 19, bottom: 4),
                child: Text(
                  "Enter Mobile Number",
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
                    hintText: "Mobile number",
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
              //address
              Padding(
                padding: const EdgeInsets.only(top: 19, bottom: 4),
                child: Text(
                  "Address",
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
                padding: const EdgeInsets.symmetric(vertical: 28),
                child: btnWidget(context, "Next", onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RegisterStep2View()));
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
                  InkWell(
                    onTap: () => Navigator.push(
                        context,
                        PageTransition(
                            child: const SignInView(),
                            type: PageTransitionType.leftToRight,
                            duration: const Duration(milliseconds: 400))),
                    child: Text(
                      "Sign in",
                      style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: AppColors.lightGreyColor,
                              fontStyle: FontStyle.normal)),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 86,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

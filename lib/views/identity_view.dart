import 'package:agent_app/helpers/app_colors.dart';
import 'package:agent_app/views/sign_in.dart';
import 'package:agent_app/views/verify_email_view.dart';
import 'package:agent_app/widgets/btn_widget.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class IdentityView extends StatefulWidget {
  const IdentityView({Key? key}) : super(key: key);

  @override
  _IdentityViewState createState() => _IdentityViewState();
}

class _IdentityViewState extends State<IdentityView> {
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
                  "Step 4 of 4",
                  style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: AppColors.textColor,
                          fontStyle: FontStyle.normal)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 19, bottom: 7),
                child: Center(
                  child: Text(
                    "Add identity",
                    style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            color: AppColors.textColor,
                            fontStyle: FontStyle.normal)),
                  ),
                ),
              ),
              Center(
                child: Text(
                  "Upload a logo for this business.",
                  style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: AppColors.textColor,
                          fontStyle: FontStyle.normal)),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 42, bottom: 20),
                  child: DottedBorder(
                      strokeCap: StrokeCap.butt,
                      radius: const Radius.circular(24),
                      strokeWidth: 1,
                      dashPattern: const [8, 10],
                      borderType: BorderType.RRect,
                      padding: const EdgeInsets.all(50),
                      child: Image.asset(
                        "assets/images/cam.png",
                        height: 40,
                        width: 40,
                      )),
                ),
              ),
              Center(
                child: Text(
                  "Upload JPG or PNG file. \nMaximum file size 2MB.",
                  style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                          color: AppColors.blackColor,
                          fontStyle: FontStyle.normal)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 80, bottom: 30),
                child: btnWidget(context, "Submit", onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const VerifyEmailView()));
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
                  const SizedBox(
                    width: 5,
                  ),
                  InkWell(
                    onTap: () => Navigator.push(
                        context,
                        PageTransition(
                            child: const SignInView(),
                            type: PageTransitionType.rightToLeft,
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

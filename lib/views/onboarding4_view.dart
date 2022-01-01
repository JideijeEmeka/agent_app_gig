import 'package:agent_app/helpers/app_colors.dart';
import 'package:agent_app/views/register_step1_view.dart';
import 'package:agent_app/views/sign_in.dart';
import 'package:agent_app/widgets/btn_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class Onboarding4 extends StatefulWidget {
  const Onboarding4({Key? key}) : super(key: key);

  @override
  _Onboarding4State createState() => _Onboarding4State();
}

class _Onboarding4State extends State<Onboarding4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.whiteColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/logo.png"),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50),
              child: Text(
                "Discover all the amazing\nservices in one app",
                style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: AppColors.textColor,
                        fontStyle: FontStyle.normal)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 23),
              child: btnWidget(context, "Register",
                  onTap: () => Navigator.push(
                      context,
                      PageTransition(
                          child: const RegisterStep1View(),
                          type: PageTransitionType.leftToRight,
                          duration: const Duration(milliseconds: 400)))),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 27, horizontal: 23),
              width: MediaQuery.of(context).size.width,
              child: OutlinedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: const SignInView(),
                          type: PageTransitionType.leftToRight,
                          duration: const Duration(milliseconds: 400)));
                },
                child: const Text("Sign in"),
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    vertical: 12,
                  ),
                  side: const BorderSide(color: AppColors.appBarTextColor),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  primary: AppColors.appBarTextColor,
                  textStyle: GoogleFonts.inter(
                      textStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.normal)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

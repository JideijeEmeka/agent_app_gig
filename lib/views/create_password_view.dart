import 'package:agent_app/helpers/app_colors.dart';
import 'package:agent_app/views/dashboard.dart';
import 'package:agent_app/views/sign_in.dart';
import 'package:agent_app/widgets/btn_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class CreatePasswordView extends StatefulWidget {
  const CreatePasswordView({Key? key}) : super(key: key);

  @override
  _VerifyEmailViewState createState() => _VerifyEmailViewState();
}

class _VerifyEmailViewState extends State<CreatePasswordView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 150,
              ),
              Image.asset("assets/images/newpass.png"),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  "Create new password",
                  style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: AppColors.headerColor,
                          fontStyle: FontStyle.normal)),
                ),
              ),
              Text(
                "Your new password must be different \nfrom the previously used one",
                style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                        fontSize: 13.5,
                        height: 1.5,
                        fontWeight: FontWeight.w400,
                        color: AppColors.blackColor,
                        fontStyle: FontStyle.normal)),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "Enter new password",
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
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Repeat new password",
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
                padding: const EdgeInsets.only(top: 20, bottom: 50),
                child: btnWidget(context, "Create new password", onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Dashboard()));
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

import 'package:agent_app/helpers/app_colors.dart';
import 'package:agent_app/views/account_details_view.dart';
import 'package:agent_app/widgets/btn_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterStep2View extends StatefulWidget {
  const RegisterStep2View({Key? key}) : super(key: key);

  @override
  _RegisterStep2ViewState createState() => _RegisterStep2ViewState();
}

class _RegisterStep2ViewState extends State<RegisterStep2View> {
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
                  "Step 2 of 3",
                  style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: AppColors.textColor,
                          fontStyle: FontStyle.normal)),
                ),
              ),
              //city
              Padding(
                padding: const EdgeInsets.only(top: 19, bottom: 4),
                child: Text(
                  "City",
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
              //postal code
              Padding(
                padding: const EdgeInsets.only(top: 19, bottom: 4),
                child: Text(
                  "Postal Code",
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
              //country
              Padding(
                padding: const EdgeInsets.only(top: 19, bottom: 4),
                child: Text(
                  "Country",
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
              //email
              Padding(
                padding: const EdgeInsets.only(top: 19, bottom: 4),
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
                padding: const EdgeInsets.symmetric(vertical: 28),
                child: btnWidget(context, "Next", onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AccountDetailsView()));
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

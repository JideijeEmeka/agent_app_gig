import 'package:agent_app/helpers/app_colors.dart';
import 'package:agent_app/views/identity_view.dart';
import 'package:agent_app/widgets/btn_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountDetailsView extends StatefulWidget {
  const AccountDetailsView({Key? key}) : super(key: key);

  @override
  _AccountDetailsViewState createState() => _AccountDetailsViewState();
}

class _AccountDetailsViewState extends State<AccountDetailsView> {
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
                  "Step 3 of 3",
                  style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: AppColors.textColor,
                          fontStyle: FontStyle.normal)),
                ),
              ),
              //account
              Padding(
                padding: const EdgeInsets.only(top: 19, bottom: 4),
                child: Text(
                  "Account Name",
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
              //account number
              Padding(
                padding: const EdgeInsets.only(top: 19, bottom: 4),
                child: Text(
                  "Account number",
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
              //bank
              Padding(
                padding: const EdgeInsets.only(top: 19, bottom: 4),
                child: Text(
                  "Bank",
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
              //bvn
              Padding(
                padding: const EdgeInsets.only(top: 19, bottom: 4),
                child: Text(
                  "BVN",
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
                padding: const EdgeInsets.only(top: 115, bottom: 28),
                child: btnWidget(context, "Next", onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const IdentityView()));
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
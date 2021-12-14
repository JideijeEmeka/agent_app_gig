import 'package:agent_app/helpers/app_colors.dart';
import 'package:agent_app/views/dashboard.dart';
import 'package:agent_app/widgets/btn_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
          alignment: Alignment.center,
          margin: const EdgeInsets.symmetric(horizontal: 23),
          child: Column(
            children: [
              const SizedBox(
                height: 180,
              ),
              Image.asset("assets/images/newpass.png"),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 15),
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
                        fontSize: 12,
                        height: 1.5,
                        fontWeight: FontWeight.w400,
                        color: AppColors.blackColor,
                        fontStyle: FontStyle.normal)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 15),
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
                padding: const EdgeInsets.only(top: 15, bottom: 30),
                child: btnWidget(context, "Create new password", onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Dashboard()));
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

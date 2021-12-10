import 'package:agent_app/helpers/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
                        color: AppColors.subHeaderColor,
                        fontStyle: FontStyle.normal)),
              ),
            )
          ],
        ),
      ),
    );
  }
}

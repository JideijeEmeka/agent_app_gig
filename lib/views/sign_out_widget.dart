import 'package:agent_app/helpers/app_colors.dart';
import 'package:agent_app/views/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShowDialogBox extends StatefulWidget {
  const ShowDialogBox({Key? key}) : super(key: key);

  @override
  _ShowDialogBoxState createState() => _ShowDialogBoxState();
}

class _ShowDialogBoxState extends State<ShowDialogBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: AlertDialog(
              title: const Text("Sign Out"),
              content: const Text("Are you sure you want to Sign Out?"),
              actions: [
                TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text(
                      "No",
                      style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: AppColors.redColor,
                              fontStyle: FontStyle.normal)),
                    )),
                TextButton(
                    onPressed: () => {
                          Navigator.pop(context),
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignInView()))
                        },
                    child: Text(
                      "Yes",
                      style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: AppColors.blueColor,
                              fontStyle: FontStyle.normal)),
                    ))
              ],
              elevation: 24,
            ),
          ),
          Image.asset("assets/images/logo.png"),
        ],
      ),
    );
  }
}

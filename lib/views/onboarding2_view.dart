import 'package:agent_app/helpers/app_colors.dart';
import 'package:agent_app/views/onboarding3_view.dart';
import 'package:agent_app/views/onboarding4_view.dart';
import 'package:agent_app/widgets/btn_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class Onboarding2 extends StatefulWidget {
  const Onboarding2({Key? key}) : super(key: key);

  @override
  _Onboarding2State createState() => _Onboarding2State();
}

class _Onboarding2State extends State<Onboarding2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: AppColors.blackColor,
          onPressed: () => Navigator.pop(context),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.whiteColor,
        elevation: 0.0,
        actions: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context,
                  PageTransition(
                      child: const Onboarding4(),
                      type: PageTransitionType.leftToRight,
                      duration: const Duration(milliseconds: 400)));
            },
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                "Skip",
                style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: AppColors.textColor,
                        fontStyle: FontStyle.normal)),
              ),
            ),
          ),
        ],
      ),
      body: Container(
        color: AppColors.whiteColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/onboard2.png"),
            Text(
              "Food delivery",
              style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: AppColors.headerColor,
                      fontStyle: FontStyle.normal)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 37),
              child: Text(
                "Get your food from different \nvendors delivered to you",
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
              child: btnWidget(context, "Next", onTap: ()=>
              Navigator.push(
                  context,
                  PageTransition(
                      child: const Onboarding3(),
                      type: PageTransitionType.leftToRight,
                      duration: const Duration(milliseconds: 400)))),
            ),
          ],
        ),
      ),
    );
  }
}
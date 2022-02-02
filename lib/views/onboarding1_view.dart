import 'package:agent_app/helpers/app_colors.dart';
import 'package:agent_app/models/onboarding_contents.dart';
import 'package:agent_app/views/onboarding4_view.dart';
import 'package:agent_app/widgets/btn_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class Onboarding1 extends StatefulWidget {
  const Onboarding1({Key? key}) : super(key: key);

  @override
  _Onboarding1State createState() => _Onboarding1State();
}

class _Onboarding1State extends State<Onboarding1> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
              onPageChanged: (int index) => setState(() {
                currentIndex = index;
              }),
              itemCount: contents.length,
              itemBuilder: (_, i) {
                return Container(
                  color: AppColors.whiteColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        contents[i].image,
                        height: 260,
                        width: 260,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 10,
                        ),
                        child: Text(
                          contents[i].title,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                              textStyle: const TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.headerColor,
                                  fontStyle: FontStyle.normal)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 10,
                          bottom: 20,
                        ),
                        child: Text(
                          contents[i].description,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                              textStyle: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.textColor,
                                  fontStyle: FontStyle.normal)),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),   
          ),
          Padding(
              padding: const EdgeInsets.only(
                  top: 10, bottom: 50, right: 20, left: 20),
              child: btnWidget(context,
                  currentIndex == contents.length - 1 ? "Get started" : "Next",
                  onTap: () {
                if (currentIndex == contents.length - 1) {
                  Navigator.push(
                      context,   
                      PageTransition(
                          child: const Onboarding4(),
                          type: PageTransitionType.bottomToTop,
                          duration: const Duration(milliseconds: 400)));
                } else {
                  _controller.nextPage(
                      duration: const Duration(milliseconds: 400),
                      curve: Curves.easeInCubic,);
                }
              })),
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:
                  List.generate(contents.length, (index) => buildDot(index)),
            ),
          ),
        ],
      ),
    );
  }

  Container buildDot(int index) {
    return Container(
      height: 8,
      width: currentIndex == index ? 8 : 8,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: currentIndex == index
            ? AppColors.btnColor
            : AppColors.lightGreyColor,
      ),
    );
  }
}

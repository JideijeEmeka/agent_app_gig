import 'package:agent_app/helpers/app_bar.dart';
import 'package:agent_app/helpers/app_colors.dart';
import 'package:agent_app/views/about.dart';
import 'package:agent_app/views/forgot_password_view.dart';
import 'package:agent_app/views/orders_view.dart';
import 'package:agent_app/widgets/settings.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAccountView extends StatefulWidget {
  const MyAccountView({Key? key}) : super(key: key);

  @override
  _MyAccountViewState createState() => _MyAccountViewState();
}

class _MyAccountViewState extends State<MyAccountView> {
  List<Accounts> accounts = [
    Accounts(
        leadingImage: "assets/icons/timer.png",
        title: "Order history",
        trailingImage: "assets/icons/arrowIcon.png",
        page: const About()),
    Accounts(
      leadingImage: "assets/icons/about.png",
      title: "About us",
      trailingImage: "assets/icons/arrowIcon.png",
      page: const About(),
    ),
    Accounts(
        leadingImage: "assets/icons/signout.png",
        title: "Change password",
        trailingImage: "assets/icons/arrowIcon.png",
        page: const ForgotPasswordView()),
    Accounts(
        leadingImage: "assets/icons/signout.png",
        title: "Sign out",
        trailingImage: "assets/icons/arrowIcon.png",
        page: const About()),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, "Messages"),
      body: SingleChildScrollView(
        child: Container(
            color: AppColors.whiteColor,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Center(
                  child: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage("assets/images/Ellipse5.png"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  child: Text(
                    "Boma Agina-obu",
                    style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: AppColors.textColor,
                            fontStyle: FontStyle.normal)),
                  ),
                ),
                Text(
                  "bomaaginaobu@gmail.com",
                  style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: AppColors.textColor,
                          fontStyle: FontStyle.normal)),
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 300,
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: accounts.length,
                      itemBuilder: (context, index) {
                        return Card(
                          elevation: 0,
                          child: ListTile(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        accounts[index].page)),
                            horizontalTitleGap: 5,
                            title: Text(
                              accounts[index].title,
                              style: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.textColor,
                                      fontStyle: FontStyle.normal)),
                            ),
                            leading: ImageIcon(
                              AssetImage(accounts[index].leadingImage),
                              color: AppColors.blackColor,
                              size: 21,
                            ),
                            trailing: ImageIcon(
                              AssetImage(accounts[index].trailingImage),
                              color: AppColors.blackColor,
                            ),
                          ),
                        );
                      }),
                ),
              ],
            )),
      ),
    );
  }
}

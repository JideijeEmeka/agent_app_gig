import 'package:agent_app/helpers/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAccountView extends StatefulWidget {
  const MyAccountView({Key? key}) : super(key: key);

  @override
  _MyAccountViewState createState() => _MyAccountViewState();
}

class _MyAccountViewState extends State<MyAccountView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: BackButton(
            color: AppColors.lightGreyColor,
            onPressed: () => Navigator.pop(context)),
        backgroundColor: AppColors.whiteColor,
        title: const Text("Messages"),
        titleTextStyle: GoogleFonts.inter(
            textStyle: const TextStyle(
                fontSize: 18,
                color: AppColors.appBarTextColor,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal)),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        color: AppColors.whiteColor,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "All messages",
                    style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: AppColors.textColor,
                            fontStyle: FontStyle.normal)),
                  ),
                  const ImageIcon(AssetImage("assets/icons/menu.png")),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20, bottom: 10),
                child: Divider(
                  color: AppColors.lightGreyColor,
                  thickness: 1,
                ),
              ),
              ListTile(
                onTap: () {},
                visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
                minVerticalPadding: 10,
                leading: const CircleAvatar(
                  backgroundImage: AssetImage("assets/icons/pic.png"),
                ),
                title: Text(
                  "FedEx",
                  style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: AppColors.greyColor,
                          fontStyle: FontStyle.normal)),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                  ),
                  child: Text(
                    "I am trying to know where my order is...",
                    style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: AppColors.lightGreyColor,
                            fontStyle: FontStyle.normal)),
                  ),
                ),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "1m",
                      style: GoogleFonts.inter(
                          textStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: AppColors.textColor.withOpacity(0.4),
                              fontStyle: FontStyle.normal)),
                    ),
                    CircleAvatar(
                      backgroundColor: AppColors.appBarTextColor,
                      radius: 10,
                      child: Text(
                        "2",
                        style: GoogleFonts.dmSans(
                            textStyle: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: AppColors.whiteColor,
                                fontStyle: FontStyle.normal)),
                      ),
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20, bottom: 10),
                child: Divider(
                  color: AppColors.lightGreyColor,
                  thickness: 1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

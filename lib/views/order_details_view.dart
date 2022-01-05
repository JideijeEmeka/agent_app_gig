import 'package:agent_app/helpers/app_bar.dart';
import 'package:agent_app/helpers/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderDetailsView extends StatefulWidget {
  const OrderDetailsView({Key? key}) : super(key: key);

  @override
  _OrderDetailsViewState createState() => _OrderDetailsViewState();
}

class _OrderDetailsViewState extends State<OrderDetailsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, "Order details"),
      body: Container(
        color: AppColors.mainColor,
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: const [
                    CircleAvatar(
                      radius: 6,
                      backgroundColor: AppColors.appBarTextColor,
                    ),
                    ImageIcon(AssetImage("assets/icons/line.png")),
                    CircleAvatar(
                      radius: 6,
                      backgroundColor: AppColors.headerColor,
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "370 upper sakponba road Abuja",
                      style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: AppColors.lightGreyColor,
                              fontStyle: FontStyle.normal)),
                    ),
                    const SizedBox(height: 19),
                    Text(
                      "Canada",
                      style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: AppColors.lightGreyColor,
                              fontStyle: FontStyle.normal)),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text(
                "N2500.00",
                style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: AppColors.headerColor,
                        fontStyle: FontStyle.normal)),
              ),
            ),
            Text(
              "Payment was made by card",
              style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: AppColors.lightGreyColor,
                      fontStyle: FontStyle.normal)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: const Divider(
                  thickness: 1,
                  color: AppColors.lightGreyColor,
                ),
              ),
            ),
            Image.asset("assets/images/fedex1.png"),
            Padding(
              padding: const EdgeInsets.only(top: 18, bottom: 60),
              child: Container(
                height: 94,
                width: MediaQuery.of(context).size.width,
                color: AppColors.lightBackgroundColor,
                child: Container(
                    margin: const EdgeInsets.symmetric(
                        vertical: 25, horizontal: 23),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              "Date & Time",
                              style: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.textColor,
                                      fontStyle: FontStyle.normal)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 14),
                              child: Text(
                                "Service Type",
                                style: GoogleFonts.inter(
                                    textStyle: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: AppColors.textColor,
                                        fontStyle: FontStyle.normal)),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "22-09-2020 at 9:30 am",
                              style: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.textColor,
                                      fontStyle: FontStyle.normal)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 14),
                              child: Text(
                                "Pick & drop",
                                style: GoogleFonts.inter(
                                    textStyle: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.textColor,
                                        fontStyle: FontStyle.normal)),
                              ),
                            ),
                          ],
                        )
                      ],
                    )),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                  onPressed: () {},
                  child: const Text("Reject"),
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        vertical: 12, horizontal: 30),
                    side: const BorderSide(color: AppColors.redColor),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    primary: AppColors.redColor,
                    textStyle: GoogleFonts.inter(
                        textStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.normal)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text("Accept"),
                    style: OutlinedButton.styleFrom(
                      shadowColor: AppColors.appBarTextColor,
                      elevation: 5,
                      padding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 30),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),
                      primary: AppColors.whiteColor,
                      backgroundColor: AppColors.appBarTextColor,
                      textStyle: GoogleFonts.inter(
                          textStyle: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.normal)),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

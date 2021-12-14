import 'package:agent_app/helpers/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TrackOrderView extends StatefulWidget {
  const TrackOrderView({Key? key}) : super(key: key);

  @override
  _TrackOrderViewState createState() => _TrackOrderViewState();
}

class _TrackOrderViewState extends State<TrackOrderView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 80, bottom: 10),
                child: Text(
                  "August 13, 2021",
                  style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: AppColors.lightGreyColor,
                          fontStyle: FontStyle.normal)),
                ),
              ),
              Text(
                "Today",
                style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: AppColors.textColor,
                        fontStyle: FontStyle.normal)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 27, bottom: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(children: [
                      Text(
                        "Mon",
                        style: GoogleFonts.inter(
                            textStyle: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: AppColors.lightGreyColor,
                                fontStyle: FontStyle.normal)),
                      ),
                      Text(
                        "9",
                        style: GoogleFonts.inter(
                            textStyle: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: AppColors.textColor,
                                fontStyle: FontStyle.normal)),
                      ),
                    ]),
                    Column(children: [
                      Text(
                        "Tue",
                        style: GoogleFonts.inter(
                            textStyle: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: AppColors.lightGreyColor,
                                fontStyle: FontStyle.normal)),
                      ),
                      Text(
                        "10",
                        style: GoogleFonts.inter(
                            textStyle: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: AppColors.textColor,
                                fontStyle: FontStyle.normal)),
                      ),
                    ]),
                    Column(children: [
                      Text(
                        "Wed",
                        style: GoogleFonts.inter(
                            textStyle: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: AppColors.lightGreyColor,
                                fontStyle: FontStyle.normal)),
                      ),
                      Text(
                        "11",
                        style: GoogleFonts.inter(
                            textStyle: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: AppColors.textColor,
                                fontStyle: FontStyle.normal)),
                      ),
                    ]),
                    Column(children: [
                      Text(
                        "Thu",
                        style: GoogleFonts.inter(
                            textStyle: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: AppColors.lightGreyColor,
                                fontStyle: FontStyle.normal)),
                      ),
                      Text(
                        "12",
                        style: GoogleFonts.inter(
                            textStyle: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: AppColors.textColor,
                                fontStyle: FontStyle.normal)),
                      ),
                    ]),
                    Column(children: [
                      Text(
                        "Fri",
                        style: GoogleFonts.inter(
                            textStyle: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: AppColors.lightGreyColor,
                                fontStyle: FontStyle.normal)),
                      ),
                      Text(
                        "13",
                        style: GoogleFonts.inter(
                            textStyle: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: AppColors.textColor,
                                fontStyle: FontStyle.normal)),
                      ),
                    ]),
                    Column(children: [
                      Text(
                        "Sat",
                        style: GoogleFonts.inter(
                            textStyle: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: AppColors.lightGreyColor,
                                fontStyle: FontStyle.normal)),
                      ),
                      Text(
                        "14",
                        style: GoogleFonts.inter(
                            textStyle: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: AppColors.textColor,
                                fontStyle: FontStyle.normal)),
                      ),
                    ]),
                    Column(children: [
                      Text(
                        "Sun",
                        style: GoogleFonts.inter(
                            textStyle: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: AppColors.lightGreyColor,
                                fontStyle: FontStyle.normal)),
                      ),
                      Text(
                        "15",
                        style: GoogleFonts.inter(
                            textStyle: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: AppColors.textColor,
                                fontStyle: FontStyle.normal)),
                      ),
                    ]),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.appBarTextColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Picked up order",
                            style: GoogleFonts.inter(
                                textStyle: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.whiteColor,
                                    fontStyle: FontStyle.normal)),
                          ),
                          Text(
                            "10:00 AM",
                            style: GoogleFonts.inter(
                                textStyle: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.hintTextColor,
                                    fontStyle: FontStyle.normal)),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 9),
                        child: Text(
                          "Order picked up from \nwarehouse at Gbagada",
                          style: GoogleFonts.inter(
                              textStyle: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.hintTextColor,
                                  fontStyle: FontStyle.normal)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 47),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 16, horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Order sent to airport",
                              style: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: AppColors.textColor,
                                      fontStyle: FontStyle.normal)),
                            ),
                            Text(
                              "10:00 AM",
                              style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color:
                                          AppColors.textColor.withOpacity(0.6),
                                      fontStyle: FontStyle.normal)),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 9),
                          child: Text(
                            "Order has been sent to\nthe airport",
                            style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.textColor.withOpacity(0.6),
                                    fontStyle: FontStyle.normal)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 16, horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Order Shipped",
                              style: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: AppColors.textColor,
                                      fontStyle: FontStyle.normal)),
                            ),
                            Text(
                              "11:00 AM",
                              style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color:
                                          AppColors.textColor.withOpacity(0.6),
                                      fontStyle: FontStyle.normal)),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 9),
                          child: Text(
                            "Order Shipped via DHL\nservice",
                            style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.textColor.withOpacity(0.6),
                                    fontStyle: FontStyle.normal)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 16, horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Order Delivered",
                              style: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: AppColors.textColor,
                                      fontStyle: FontStyle.normal)),
                            ),
                            Text(
                              "12:00 PM",
                              style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color:
                                          AppColors.textColor.withOpacity(0.6),
                                      fontStyle: FontStyle.normal)),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 9),
                          child: Text(
                            "Order delivered at the\nware house in canada",
                            style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.textColor.withOpacity(0.6),
                                    fontStyle: FontStyle.normal)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

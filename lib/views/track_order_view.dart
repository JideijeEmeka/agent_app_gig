import 'package:agent_app/helpers/app_colors.dart';
import 'package:agent_app/views/order_details_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';

class TrackOrderView extends StatefulWidget {
  const TrackOrderView({Key? key}) : super(key: key);

  @override
  _TrackOrderViewState createState() => _TrackOrderViewState();
}

class _TrackOrderViewState extends State<TrackOrderView> {
  late DateTime _selectedDay;
  late DateTime _focusedDay;

  @override
  void initState() {
    super.initState();
    _selectedDay = DateTime.now();
    _focusedDay = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 15, top: 80),
              child: Text(
                "Today",
                style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: AppColors.textColor,
                        fontStyle: FontStyle.normal)),
              ),
            ),
            // Calender Widget
            TableCalendar(
              currentDay: DateTime.now(),
              focusedDay: DateTime.now(),
              firstDay: DateTime.utc(2010, 10, 16),
              lastDay: DateTime.utc(2030, 3, 14),
              selectedDayPredicate: (day) {
                return isSameDay(_selectedDay, day);
              },
              onDaySelected: (selectedDay, focusedDay) {
                setState(() {
                  _selectedDay = selectedDay;
                  _focusedDay = focusedDay;
                });
              },
              calendarFormat: CalendarFormat.week,
              startingDayOfWeek: StartingDayOfWeek.monday,
              pageJumpingEnabled: true,
              calendarStyle: CalendarStyle(
                  isTodayHighlighted: true,
                  selectedDecoration: const BoxDecoration(
                      color: AppColors.appBarTextColor, shape: BoxShape.circle),
                  selectedTextStyle: GoogleFonts.inter(
                      textStyle: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w800,
                          color: AppColors.whiteColor.withOpacity(0.8),
                          fontStyle: FontStyle.normal)),
                  todayTextStyle: GoogleFonts.inter(
                      textStyle: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w800,
                          color: AppColors.whiteColor.withOpacity(0.8),
                          fontStyle: FontStyle.normal)),
                  todayDecoration: const BoxDecoration(
                      color: AppColors.appBarTextColor,
                      shape: BoxShape.circle)),
              daysOfWeekStyle: DaysOfWeekStyle(
                weekdayStyle: GoogleFonts.inter(
                    textStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: AppColors.lightGreyColor,
                        fontStyle: FontStyle.normal)),
              ),
              headerStyle: HeaderStyle(
                  titleTextStyle: GoogleFonts.inter(
                      textStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: AppColors.lightGreyColor,
                          fontStyle: FontStyle.normal)),
                  headerMargin: const EdgeInsets.only(left: 15, bottom: 5),
                  formatButtonShowsNext: false,
                  formatButtonVisible: false,
                  rightChevronVisible: false,
                  leftChevronVisible: false),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: const BoxDecoration(color: AppColors.mainColor),
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Row(
                          children: [
                            Image.asset("assets/images/chops.png"),
                            const SizedBox(
                              width: 13,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Order ID: 2346467666",
                                    style: GoogleFonts.inter(
                                        textStyle: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700,
                                            color: AppColors.textColor,
                                            fontStyle: FontStyle.normal)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 11),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Quantity - 2",
                                          style: GoogleFonts.inter(
                                              textStyle: const TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  color:
                                                      AppColors.hintTextColor,
                                                  fontStyle: FontStyle.normal)),
                                        ),
                                        Text(
                                          "Gbagada, Abuja",
                                          style: GoogleFonts.inter(
                                              textStyle: const TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  color:
                                                      AppColors.hintTextColor,
                                                  fontStyle: FontStyle.normal)),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 11),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "N20,000",
                                          style: GoogleFonts.inter(
                                              textStyle: const TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  color:
                                                      AppColors.hintTextColor,
                                                  fontStyle: FontStyle.normal)),
                                        ),
                                        TextButton(
                                            onPressed: () => Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const OrderDetailsView())),
                                            style: TextButton.styleFrom(
                                              padding: EdgeInsets.zero,
                                              minimumSize: Size.zero,
                                              tapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                              primary: AppColors.textColor,
                                              textStyle: GoogleFonts.inter(
                                                  textStyle: const TextStyle(
                                                      decoration: TextDecoration
                                                          .underline,
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontStyle:
                                                          FontStyle.normal)),
                                            ),
                                            child: const Text("Details")),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

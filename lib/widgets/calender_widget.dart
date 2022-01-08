import 'package:agent_app/helpers/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';

Widget calenderWidget() {
  return TableCalendar(
    currentDay: DateTime.now(),
    focusedDay: DateTime.now(),
    firstDay: DateTime.utc(2010, 10, 16),
    lastDay: DateTime.utc(2030, 3, 14),
    calendarFormat: CalendarFormat.week,
    startingDayOfWeek: StartingDayOfWeek.monday,
    pageJumpingEnabled: true,
    calendarStyle: CalendarStyle(
        isTodayHighlighted: true,
        todayTextStyle: GoogleFonts.inter(
            textStyle: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w800,
                color: AppColors.whiteColor.withOpacity(0.8),
                fontStyle: FontStyle.normal)),
        todayDecoration: const BoxDecoration(
            color: AppColors.appBarTextColor, shape: BoxShape.circle)),
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
  );
}

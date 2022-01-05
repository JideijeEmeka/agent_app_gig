import 'package:agent_app/helpers/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

customAppBar(
  BuildContext context,
  title,
) {
  return AppBar(
    automaticallyImplyLeading: false,
    backgroundColor: AppColors.whiteColor,
    title: Text(title),
    titleTextStyle: GoogleFonts.inter(
        textStyle: const TextStyle(
            fontSize: 18,
            color: AppColors.appBarTextColor,
            fontWeight: FontWeight.w600,
            fontStyle: FontStyle.normal)),
    centerTitle: true,
    elevation: 0,
    leading: BackButton(
      onPressed: () => Navigator.pop(context),
      color: AppColors.lightGreyColor,
    ),
  );
}

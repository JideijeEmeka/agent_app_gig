import 'package:agent_app/helpers/app_colors.dart';
import 'package:agent_app/widgets/new_orders_tab_widget.dart';
import 'package:agent_app/widgets/pending_orders_tab_widget.dart';
import 'package:agent_app/widgets/processed_orders_tab_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: PreferredSize(
              child: AppBar(
                automaticallyImplyLeading: false,
                centerTitle: true,
                elevation: 0.0,
                backgroundColor: AppColors.mainColor,
                leading: BackButton(
                  onPressed: () => Navigator.pop(context),
                  color: AppColors.lightGreyColor,
                ),
                title: const Text(
                  "Orders",
                ),
                titleTextStyle: GoogleFonts.inter(
                  textStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: AppColors.appBarTextColor,
                      fontStyle: FontStyle.normal),
                ),
                bottom: TabBar(
                    isScrollable: true,
                    indicatorColor: AppColors.appBarTextColor,
                    labelColor: AppColors.blackColor,
                    unselectedLabelColor: AppColors.hintTextColor,
                    labelStyle: GoogleFonts.inter(
                        textStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: AppColors.appBarTextColor,
                            fontStyle: FontStyle.normal)),
                    unselectedLabelStyle: GoogleFonts.inter(
                        textStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: AppColors.appBarTextColor,
                            fontStyle: FontStyle.normal)),
                    labelPadding: const EdgeInsets.symmetric(horizontal: 20),
                    tabs: const [
                      Tab(
                        text: "New Orders",
                      ),
                      Tab(
                        text: "Pending",
                      ),
                      Tab(
                        text: "Processed",
                      ),
                    ]),
              ),
              preferredSize: const Size.fromHeight(100)),
          body: SingleChildScrollView(
            child: Container(
              color: AppColors.mainColor,
              height: MediaQuery.of(context).size.height,
              child: TabBarView(children: [
                newOrdersTabView(context),
                pendingOrdersTabView(),
                processedTabView(context),
              ]),
            ),
          ),
        ));
  }
}

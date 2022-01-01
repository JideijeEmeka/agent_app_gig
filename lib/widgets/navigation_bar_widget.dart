import 'package:agent_app/helpers/app_colors.dart';
import 'package:agent_app/views/home_view.dart';
import 'package:agent_app/views/my_account_view.dart';
import 'package:agent_app/views/orders_view.dart';
import 'package:agent_app/views/track_order_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

int _currentIndex = 0;

List screens = [
  const HomeView(),
  const TrackOrderView(),
  const OrdersView(),
  const MyAccountView(),
];

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        screens[_currentIndex],
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            BottomNavigationBar(
                onTap: (index) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                currentIndex: _currentIndex,
                unselectedLabelStyle: GoogleFonts.inter(
                  color: AppColors.greyColor,
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                ),
                selectedLabelStyle: GoogleFonts.inter(
                  color: AppColors.greyColor,
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                ),
                showUnselectedLabels: true,
                elevation: 30,
                iconSize: 22,
                type: BottomNavigationBarType.fixed,
                backgroundColor: Colors.white,
                selectedItemColor: AppColors.appBarTextColor,
                items: const [
                  BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage(
                        'assets/icons/home.png',
                      ),
                    ),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                      icon: ImageIcon(
                        AssetImage(
                          'assets/icons/track_order.png',
                        ),
                      ),
                      label: 'Track order'),
                  BottomNavigationBarItem(
                      icon: ImageIcon(
                        AssetImage(
                          'assets/icons/orders.png',
                        ),
                      ),
                      label: 'Orders'),
                  BottomNavigationBarItem(
                      icon: ImageIcon(
                        AssetImage(
                          'assets/icons/account.png',
                        ),
                      ),
                      label: 'My account'),
                ]),
          ],
        ),
      ],
    );
  }
}

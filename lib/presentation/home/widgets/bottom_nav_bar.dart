import 'package:double_back_to_close/double_back_to_close.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:webview_skops/core/inherited/tab_controller_provider.dart';
import 'package:webview_skops/default/size_config.dart';
import 'package:webview_skops/presentation/home/pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webview_skops/presentation/kontrol/pages/kontrol_page.dart';
import 'package:webview_skops/presentation/master/pages/master_page.dart';
import 'package:webview_skops/presentation/rekap/pages/rekap_page.dart';
import 'package:webview_skops/presentation/setting/pages/setting_page.dart';
// import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class CustomBottomNavbar extends StatelessWidget {
  final PersistentTabController controller = PersistentTabController(
    initialIndex: 0,
  );
  
  final ValueNotifier<int?> masterTabIndex = ValueNotifier<int?>(null);
  
  List<Widget> _buildScreens() {
    return [HomePage(), MasterPage(), KontrolPage(), RekapPage(), SettingPage()];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.home, size: SizeConfig.safeBlockHorizontal * 6),
        textStyle: GoogleFonts.poppins(
          fontSize: SizeConfig.blockSizeHorizontal * 2.5,
        ),
        title: ("Home"),
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.input, size: SizeConfig.safeBlockHorizontal * 6),
        textStyle: GoogleFonts.poppins(
          fontSize: SizeConfig.blockSizeHorizontal * 2.5,
        ),
        title: ("Master"),
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(
          Icons.content_paste_search_rounded,
          size: SizeConfig.safeBlockHorizontal * 6,
        ),
        title: ("Kontrol"),
        textStyle: GoogleFonts.poppins(
          fontSize: SizeConfig.blockSizeHorizontal * 2.5,
        ),
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(
          Icons.archive_outlined,
          size: SizeConfig.safeBlockHorizontal * 6,
        ),
        title: ("Rekap"),
        textStyle: GoogleFonts.poppins(
          fontSize: SizeConfig.blockSizeHorizontal * 2.5,
        ),
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.settings, size: SizeConfig.safeBlockHorizontal * 6),
        title: ("Setting"),
        textStyle: GoogleFonts.poppins(
          fontSize: SizeConfig.blockSizeHorizontal * 2.5,
        ),
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DoubleBack(
        message: "Tap lagi untuk keluar",
        textStyle: TextStyle(fontSize: 12, color: Colors.white),
        child: TabControllerProvider(
          controller: controller,
          masterTabIndex: masterTabIndex,
          child: PersistentTabView(
            context,
            padding: const EdgeInsets.all(8),
            navBarHeight: SizeConfig.safeBlockHorizontal * 15,
            controller: controller,
            screens: _buildScreens(),
            items: _navBarsItems(),
            confineToSafeArea: true,
            backgroundColor: Colors.white, // Default is Colors.white.
            handleAndroidBackButtonPress: true, // Default is true.
            resizeToAvoidBottomInset:
                true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
            stateManagement: true, // Default is true.
            // hideNavigationBarWhenKeyboardShows:
            //     true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
            decoration: NavBarDecoration(
              border: Border.symmetric(
                horizontal: BorderSide(color: Colors.blue.shade100),
              ),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              colorBehindNavBar: Colors.white,
            ),

            navBarStyle: NavBarStyle
                .style6, // Choose the nav bar style with this property.
          ),
        ),
      ),
    );
  }
}

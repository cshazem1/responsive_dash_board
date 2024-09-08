import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/size_config.dart';
import 'package:responsive_dash_board/feature/home/presentation/views/widgets/adaptive_layout.dart';
import 'package:responsive_dash_board/feature/home/presentation/views/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/feature/home/presentation/views/widgets/dashboard_desktop_layout.dart';
import 'package:responsive_dash_board/feature/home/presentation/views/widgets/dashboard_mobile_layout.dart';
import 'package:responsive_dash_board/feature/home/presentation/views/widgets/dashboard_tablet_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MediaQuery.sizeOf(context).width <SizeConfig.tablet+65 ? AppBar(
        elevation: 0,
      ) : null,
      drawer: SizedBox(
          width: MediaQuery.sizeOf(context).width * .7,
          child: const CustomDrawer()),

      drawerEdgeDragWidth: MediaQuery.sizeOf(context).width*.3,
      backgroundColor: const Color(0xffF7F9FA),
      body: AdaptiveLayout(
        mobileLayout: (context) => const DashBoardMobileLayout(),
        tabletLayout: (context) => const DashboardTabletLayout(),
        desktopLayout: (context) => const DashboardDesktopLayout(),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'custom_drawer.dart';
import 'dashboard_mobile_layout.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Expanded(
        child: CustomDrawer(),
      ),
      SizedBox(
        width: 32,
      ),
      Expanded(
        flex: 2,
        child:
            DashBoardMobileLayout(),
      ),
      SizedBox(
    width: 32,)
    ]);
  }
}


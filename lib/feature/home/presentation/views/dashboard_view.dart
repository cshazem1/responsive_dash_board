import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/feature/home/presentation/views/widgets/adaptive_layout.dart';
import 'package:responsive_dash_board/feature/home/presentation/views/widgets/dashboard_desktop_layout.dart';

import '../../../../core/utils/app_images.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
        mobileLayout: (context) => const SizedBox(),
        tabletLayout: (context) => SvgPicture.asset(Assets.imagesAvatar1),
        desktopLayout: (context) => const DashboardDesktopLayout(),
      ),
    );
  }
}

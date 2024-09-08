import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'feature/home/presentation/views/dashboard_view.dart';

void main() {
  runApp(  DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => const ResponsiveDashView(), // Wrap your app
  ),);
}

class ResponsiveDashView extends StatelessWidget {
  const ResponsiveDashView({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

  return  MaterialApp(
    locale: DevicePreview.locale(context),
    builder: DevicePreview.appBuilder,

    home:
  DashboardView()
    ,debugShowCheckedModeBanner: false,);}}
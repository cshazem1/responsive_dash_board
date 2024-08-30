import 'package:flutter/material.dart';

import 'feature/home/presentation/views/dashboard_view.dart';

void main() {
  runApp(const ResponsiveDashView());
}

class ResponsiveDashView extends StatelessWidget {
  const ResponsiveDashView({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
  return MaterialApp(home:
  DashboardView()
    ,);}}
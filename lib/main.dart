import 'package:flutter/material.dart';
import 'package:health_pocket_app/classes/appRoutes.dart';
import 'package:health_pocket_app/pages/first_content.dart';
import 'package:health_pocket_app/pages/fourth_content.dart';
import 'package:health_pocket_app/pages/home_page.dart';
import 'package:health_pocket_app/pages/onboarding_page.dart';
import 'package:health_pocket_app/pages/principal_page.dart';
import 'package:health_pocket_app/pages/sec_content.dart';
import 'package:health_pocket_app/pages/third_content.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    OneSignal.shared.init('c07adcdf-559a-4144-b3b7-c0478be214d3');

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Health Pocket',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        AppRoutes.HOME_PAGE: (_) => Home(),
        AppRoutes.ONBOARDING: (_) => Onboarding(),
        AppRoutes.PRINCIPAL_PAGE: (_) => PrincipalPage(),
        AppRoutes.FIRST_CONTENT: (_) => SaudeFisica(),
        AppRoutes.SEC_CONTENT: (_) => SaudeMental(),
        AppRoutes.THIRD_CONTENT: (_) => Alimentacao(),
        AppRoutes.FOURTH_CONTENT: (_) => Coronavirus(),
      }
    );
  }
}


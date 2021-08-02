import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:publicfinanceprototype/features/dashboard/dashboard_screen.dart';
import 'package:publicfinanceprototype/features/transactions/transactions_screen.dart';
import 'package:publicfinanceprototype/screens/startup_screen.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:responsive_framework/utils/scroll_behavior.dart';

import 'features/transactions/transactions_list_screen.dart';
import 'features/transactions/transactions_screen_1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xFF2697FF);
    const secondaryColor = Color(0xFF2A2D3E);
    const bgColor = Color(0xFF212332);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Admin Panel',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white),
        canvasColor: secondaryColor,
      ),
      builder: (context, widget) => ResponsiveWrapper.builder(
        BouncingScrollWrapper.builder(context, widget!),
        minWidth: 480,
        defaultScale: true,
        breakpoints: [
          ResponsiveBreakpoint.resize(480, name: MOBILE),
          ResponsiveBreakpoint.resize(800, name: TABLET),
          ResponsiveBreakpoint.resize(1000, name: DESKTOP),
        ],
        background: Container(
          color: Color(0xFFF5F5F5),
        ),
      ),
      //home: StartupScreen(),
      initialRoute: '/',
      // routes: {
      //   // When navigating to the "/" route, build the FirstScreen widget.
      //   '/': (context) => const StartupScreen(
      //         screen: DashboardScreen(),
      //       ),
      //   // When navigating to the "/second" route, build the SecondScreen widget.
      //   '/transactions': (context) => const StartupScreen(
      //         screen: TransactionScreen(),
      //       ),
      // },
      onGenerateRoute: (settings) {
        if (settings.name == "/") {
          return PageRouteBuilder(
              settings:
                  settings, // Pass this to make popUntil(), pushNamedAndRemoveUntil(), works
              pageBuilder: (_, __, ___) => const StartupScreen(
                    screen: DashboardScreen(),
                  ),
              transitionsBuilder: (_, a, __, c) =>
                  FadeTransition(opacity: a, child: c));
        }

        if (settings.name == "/transactions") {
          return PageRouteBuilder(
              settings:
                  settings, // Pass this to make popUntil(), pushNamedAndRemoveUntil(), works
              pageBuilder: (_, __, ___) => const StartupScreen(
                    screen: TransactionScreen1(),
                  ),
              transitionsBuilder: (_, a, __, c) =>
                  FadeTransition(opacity: a, child: c));
        }

        if (settings.name == "/list") {
          return PageRouteBuilder(
              settings:
                  settings, // Pass this to make popUntil(), pushNamedAndRemoveUntil(), works
              pageBuilder: (_, __, ___) => const StartupScreen(
                    screen: TransactionListScreen(),
                  ),
              transitionsBuilder: (_, a, __, c) =>
                  FadeTransition(opacity: a, child: c));
        }
      },
    );
  }
}

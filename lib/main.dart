import 'package:flutter/material.dart';
import 'package:islaaaam_app/features/onboarding/view/on_boarding.dart';
import 'package:islaaaam_app/features/quran/view/buttom_navigator_bar.dart';
import 'package:islaaaam_app/features/quran/view/quran_view.dart';
import 'package:islaaaam_app/features/quran/view/widget/main_screen.dart';

void main() {
  runApp(const IslaamApp());
}

class IslaamApp extends StatelessWidget {
  const IslaamApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Onboarding.id,
      routes: {
        Onboarding.id: (context) => const Onboarding(),
        QuranView.id: (context) => const QuranView(),
        ButtomNavigatorBar.id: (context) => const MainScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

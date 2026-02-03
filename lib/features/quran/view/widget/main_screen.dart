import 'package:flutter/material.dart';
import 'package:islaaaam_app/features/hadeth/view/hadeth_view.dart';
import 'package:islaaaam_app/features/quran/view/buttom_navigator_bar.dart';
import 'package:islaaaam_app/features/quran/view/quran_view.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Widget> pages = [QuranView(), HadethView()];
  int curentindex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/image/Background.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        bottomNavigationBar: ButtomNavigatorBar(
          currentindex: curentindex,
          onTap: (value) {
            setState(() {
              curentindex = value;
            });
          },
        ),
        body: pages[curentindex],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:islaaaam_app/features/hadeth/view/hadeth_view.dart';
import 'package:islaaaam_app/core/widget/buttom_navigator_bar.dart';
import 'package:islaaaam_app/features/quran/view/quran_view.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Widget> pages = [QuranView(), HadethView()];
  List<ImageProvider> images = [
    AssetImage("assets/image/Background.png"),
    AssetImage("assets/image/Background2.png"),
  ];
  int curentindex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(image: images[curentindex], fit: BoxFit.fill),
      ),
      child: SafeArea(
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
      ),
    );
  }
}

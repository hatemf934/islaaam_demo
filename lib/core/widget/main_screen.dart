import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islaaaam_app/features/hadeth/presentation/manager/get_hadeth/get_hadeth_cubit.dart';
import 'package:islaaaam_app/features/hadeth/presentation/view/hadeth_view.dart';
import 'package:islaaaam_app/core/widget/buttom_navigator_bar.dart';
import 'package:islaaaam_app/features/quran/presentation/view/quran_view.dart';
import 'package:islaaaam_app/features/radio/views/radio_view.dart';
import 'package:islaaaam_app/features/sebha/presentation/views/sepha_view.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Widget> pages = [QuranView(), HadethView(), SephaView(), RadioView()];
  List<ImageProvider> images = [
    AssetImage("assets/image/Background.png"),
    AssetImage("assets/image/Background2.png"),
    AssetImage("assets/image/Background3.png"),
    AssetImage("assets/image/Background4.png"),
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
              BlocProvider.of<GetHadethCubit>(context).gethadeth();
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

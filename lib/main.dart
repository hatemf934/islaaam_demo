import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islaaaam_app/features/hadeth/presentation/manager/get_hadeth/get_hadeth_cubit.dart';
import 'package:islaaaam_app/features/onboarding/view/on_boarding.dart';
import 'package:islaaaam_app/core/widget/buttom_navigator_bar.dart';
import 'package:islaaaam_app/core/widget/main_screen.dart';
import 'package:islaaaam_app/features/quran/presentation/manager/search_sura/search_sura_cubit.dart';
import 'package:islaaaam_app/features/quran/presentation/manager/get_recently_sura/get_recently_cubit.dart';
import 'package:islaaaam_app/features/quran/presentation/manager/get_sura_cubit/get_sura_cubit.dart';
import 'package:islaaaam_app/features/radio/presentation/views/manager/radio_or_reciters_cubit/radio_or_reciters_cubit.dart';
import 'package:islaaaam_app/features/radio/presentation/views/manager/reciters_cubit/reciters_cubit.dart';
import 'package:islaaaam_app/features/radio/presentation/views/manager/radio_cubit/radio_cubit.dart';
import 'package:islaaaam_app/features/sebha/presentation/manager/sepha_cubit/sepha_cubit.dart';
import 'package:islaaaam_app/features/time/presentation/manager/cubit/date_pray_cubit.dart';

void main() {
  runApp(const IslaamApp());
}

class IslaamApp extends StatelessWidget {
  const IslaamApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => GetSuraCubit()),
        BlocProvider(create: (context) => RecentSuraCubit()),
        BlocProvider(create: (context) => SearchSuraCubit()),
        BlocProvider(create: (context) => SephaCubit()),
        BlocProvider(create: (context) => GetHadethCubit()),
        BlocProvider(create: (context) => RadioCubit()),
        BlocProvider(create: (context) => RecitersCubit()),
        BlocProvider(create: (context) => RadioOrRecitersCubit()),
        BlocProvider(create: (context) => DatePrayCubit()),
      ],
      child: ScreenUtilInit(
        designSize: Size(430, 932),
        minTextAdapt: true,
        splitScreenMode: true,
        child: MaterialApp(
          initialRoute: Onboarding.id,
          routes: {
            Onboarding.id: (context) => const Onboarding(),
            ButtomNavigatorBar.id: (context) => const MainScreen(),
          },
          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }
}

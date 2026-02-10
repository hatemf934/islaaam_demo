import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islaaaam_app/features/radio/presentation/views/manager/play_reciters_cubit/play_reciters_cubit.dart';
import 'package:islaaaam_app/features/radio/presentation/views/manager/radio_or_reciters_cubit/radio_or_reciters_cubit.dart';
import 'package:islaaaam_app/features/radio/presentation/views/manager/reciters_cubit/reciters_cubit.dart';
import 'package:islaaaam_app/features/radio/presentation/views/manager/play_sound_cubit/play_sound_cubit.dart';
import 'package:islaaaam_app/features/radio/presentation/views/manager/radio_cubit/radio_cubit.dart';
import 'package:islaaaam_app/features/radio/presentation/views/widget/list_view_card_radio.dart';
import 'package:islaaaam_app/features/radio/presentation/views/widget/radio_elveted_button.dart';

class RadioView extends StatefulWidget {
  const RadioView({super.key});

  @override
  State<RadioView> createState() => _RadioViewState();
}

class _RadioViewState extends State<RadioView> {
  String selectedButton = "Radio";
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => PlaySoundCubit()),
        BlocProvider(create: (context) => PlayRecitersCubit()),
      ],
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            Center(
              child: Image.asset('assets/image/Group 31.png', height: 170),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RadioElvetedButton(
                  isPressed: selectedButton == "Radio",
                  onPressed: () {
                    setState(() {
                      selectedButton = "Radio";
                    });

                    BlocProvider.of<RecitersCubit>(context).reset();
                    BlocProvider.of<RadioCubit>(context).getRadio();
                    BlocProvider.of<RadioOrRecitersCubit>(
                      context,
                    ).swapToRadio();
                  },
                  textTitle: "Radio",
                ),
                RadioElvetedButton(
                  isPressed: selectedButton == "Reciters",
                  onPressed: () {
                    setState(() {
                      selectedButton = "Reciters";
                    });
                    BlocProvider.of<RadioCubit>(context).reset();
                    BlocProvider.of<RecitersCubit>(context).getReciters();
                    BlocProvider.of<RadioOrRecitersCubit>(
                      context,
                    ).swapToReciters();
                  },
                  textTitle: "Reciters",
                ),
              ],
            ),
            SizedBox(height: 20),
            Expanded(child: ListViewCardRadio()),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

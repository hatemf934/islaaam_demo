import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islaaaam_app/features/radio/presentation/views/manager/reciters_cubit/reciters_cubit.dart';
import 'package:islaaaam_app/features/radio/presentation/views/manager/radio_cubit/radio_cubit.dart';
import 'package:islaaaam_app/features/radio/presentation/views/widget/radio_card_view.dart';

class ListViewCardRadio extends StatelessWidget {
  const ListViewCardRadio({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RadioCubit, RadioState>(
      builder: (context, radioState) {
        return BlocBuilder<RecitersCubit, RecitersState>(
          builder: (context, reciterState) {
            if (radioState is RadioLoading || reciterState is RecitersLoading) {
              return const Center(
                child: CircularProgressIndicator(color: Color(0xffE2BE7F)),
              );
            }
            if (reciterState is RecitersSucsses) {
              return RadioOrRecitersListView(items: reciterState.recitersList);
            } else if (radioState is RadioSucsses) {
              return RadioOrRecitersListView(items: radioState.radioList);
            }
            return Container();
          },
        );
      },
    );
  }
}

class RadioOrRecitersListView extends StatelessWidget {
  final List<dynamic> items;

  const RadioOrRecitersListView({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return RadioCardView(parentModel: items[index]);
      },
      separatorBuilder: (context, index) => const SizedBox(height: 20),
    );
  }
}

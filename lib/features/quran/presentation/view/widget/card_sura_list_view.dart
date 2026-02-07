import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islaaaam_app/features/quran/presentation/manager/get_recently_sura/get_recently_cubit.dart';
import 'package:islaaaam_app/features/quran/presentation/view/widget/card_sura_item.dart';

class CardSuraListView extends StatelessWidget {
  const CardSuraListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: BlocBuilder<RecentSuraCubit, GetRecentlyState>(
        builder: (context, state) {
          if (state is GetRecentlyInitial) {
            return Center(
              child: Text(
                "Not Recently yet",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            );
          } else if (state is GetRecently) {
            return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.modelSura.length,
              itemBuilder: (context, index) {
                return CardSuraItem(modelSura: state.modelSura[index]);
              },
            );
          } else {
            return SizedBox.shrink();
          }
        },
      ),
    );
  }
}

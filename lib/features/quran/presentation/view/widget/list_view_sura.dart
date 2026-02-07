import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islaaaam_app/features/quran/data/model/model_sura.dart';
import 'package:islaaaam_app/features/quran/presentation/manager/get_sura_cubit/get_sura_cubit.dart';
import 'package:islaaaam_app/features/quran/presentation/view/widget/list_tile_sura_item.dart';

class ListViewSura extends StatelessWidget {
  const ListViewSura({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetSuraCubit, GetSuraState>(
      builder: (context, state) {
        if (state is GetSuraLoading) {
          return Center(
            child: CircularProgressIndicator(color: Color(0xffE2BE7F)),
          );
        } else if (state is GetSuraFailure) {
          return Center(child: Text(state.error));
        } else if (state is GetSuraSucsses) {
          List<ModelSura> dataSura = state.modelSura;
          return ListView.separated(
            itemBuilder: (context, index) {
              return ListTileSuraItem(modelSura: dataSura[index]);
            },
            separatorBuilder: (context, index) {
              return Divider(endIndent: 60, indent: 50);
            },
            itemCount: dataSura.length,
          );
        } else {
          return SizedBox.shrink();
        }
      },
    );
  }
}

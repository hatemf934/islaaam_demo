import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islaaaam_app/features/quran/presentation/manager/search_sura/search_sura_cubit.dart';
import 'package:islaaaam_app/features/quran/presentation/view/widget/custom_text_feild.dart';
import 'package:islaaaam_app/features/quran/presentation/view/widget/list_tile_sura_item.dart';
import 'package:islaaaam_app/features/quran/presentation/view/widget/most_recently_section.dart';
import 'package:islaaaam_app/features/quran/presentation/view/widget/sura_list_section.dart';

class QuranView extends StatelessWidget {
  const QuranView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            children: [
              Center(
                child: Image.asset('assets/image/Group 31.png', height: 170),
              ),
              CustomTextFiled(),
              SizedBox(height: 15),
              Expanded(
                child: BlocBuilder<SearchSuraCubit, SearchSuraState>(
                  builder: (context, state) {
                    if (state is SearchSuraInitial) {
                      return Column(
                        children: [
                          MostRecentlySection(),
                          SizedBox(height: 20),
                          Expanded(child: SuraListSection()),
                        ],
                      );
                    } else if (state is SearchSuraSearch) {
                      return ListView.builder(
                        itemBuilder: (context, index) {
                          return ListTileSuraItem(
                            modelSura: state.modelSura[index],
                          );
                        },
                        itemCount: state.modelSura.length,
                      );
                    } else if (state is SearchSuraNoResult) {
                      return Center(
                        child: Text(
                          "No Result Found",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                      );
                    } else {
                      return SizedBox.shrink();
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

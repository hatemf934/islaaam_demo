import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:islaaaam_app/core/widget/details_content.dart';
import 'package:islaaaam_app/features/quran/data/model/model_sura.dart';
import 'package:islaaaam_app/features/quran/presentation/manager/get_recently_sura/get_recently_cubit.dart';

class ListTileSuraItem extends StatelessWidget {
  const ListTileSuraItem({super.key, required this.modelSura});

  final ModelSura modelSura;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<RecentSuraCubit>().addSura(
          ModelSura(
            suraNameAr: modelSura.suraNameAr,
            suraNameEng: modelSura.suraNameEng,
            countAyat: modelSura.countAyat,
            numberOfSura: modelSura.numberOfSura,
            suraContent: modelSura.suraContent,
          ),
        );
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsContent(
              suraDetails: modelSura.suraContent,
              title: modelSura.suraNameAr,
              tilteAppBar: modelSura.suraNameEng,
            ),
          ),
        );
      },
      child: ListTile(
        leading: Stack(
          alignment: AlignmentGeometry.center,
          children: [
            Image.asset("assets/image/img_sur_number_frame.png"),
            Text(
              modelSura.numberOfSura.toString(),
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
          ],
        ),
        title: Text(
          modelSura.suraNameEng,
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          "${modelSura.countAyat} Verses",
          style: TextStyle(color: Colors.white),
        ),
        trailing: Text(
          modelSura.suraNameAr,
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

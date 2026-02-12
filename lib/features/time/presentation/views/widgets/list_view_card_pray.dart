import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islaaaam_app/core/utils/get_now_pray.dart';
import 'package:islaaaam_app/features/time/presentation/manager/cubit/date_pray_cubit.dart';
import 'package:islaaaam_app/features/time/presentation/views/widgets/card_of_pray_time.dart';

class ListViewCardPray extends StatelessWidget {
  const ListViewCardPray({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> prayNames = [
      "Fajr",
      "Sunrise",
      "Dhuhr",
      "Asr",
      "Sunset",
      "Maghrib",
      "Isha",
      "Imsak",
      "Midnight",
      "Firstthird",
      "Lastthird",
    ];
    return BlocBuilder<DatePrayCubit, DatePrayState>(
      builder: (context, state) {
        if (state is DatePrayLoading) {
          return Center(
            child: CircularProgressIndicator(color: Color(0xff856B3F)),
          );
        } else if (state is DatePraySucsses) {
          int startIndex = getInitialPage(
            state.timingModel[0].timing,
            prayNames,
          );
          return CarouselSlider.builder(
            itemCount: prayNames.length,
            itemBuilder: (context, index, realIndex) {
              return CardOfPrayTime(
                prayName: prayNames[index],
                timingModel: state.timingModel[0],
              );
            },
            options: CarouselOptions(
              height: 120,
              enlargeCenterPage: true,
              viewportFraction: 0.34,
              initialPage: startIndex,
              enableInfiniteScroll: false,
              enlargeStrategy: CenterPageEnlargeStrategy.scale,
            ),
          );
        } else {
          return SizedBox.shrink();
        }
      },
    );
  }
}

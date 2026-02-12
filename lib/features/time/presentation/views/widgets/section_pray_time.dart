import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:islaaaam_app/core/utils/get_now_pray.dart';
import 'package:islaaaam_app/features/time/presentation/manager/cubit/date_pray_cubit.dart';
import 'package:islaaaam_app/features/time/presentation/views/widgets/custom_container_date.dart';
import 'package:islaaaam_app/features/time/presentation/views/widgets/custom_container_pray_time.dart';

class SectionPrayTime extends StatelessWidget {
  const SectionPrayTime({super.key});

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
    return Column(
      children: [
        SizedBox(height: 20),
        Center(
          child: BlocBuilder<DatePrayCubit, DatePrayState>(
            builder: (context, state) {
              if (state is DatePrayLoading) {
                return Center(
                  child: CircularProgressIndicator(color: Color(0xffE2BE7F)),
                );
              } else if (state is DatePraySucsses) {
                String nextPray = getRemainingTime(
                  state.timingModel[0].timing,
                  prayNames,
                );
                return Stack(
                  children: [
                    CustomContainerDate(timeModel: state.timeModel),
                    SvgPicture.asset("assets/image/Group 10.svg"),
                    Positioned(
                      left: 40,
                      right: 40,
                      child: CustomContanierPrayTime(
                        timeModel: state.timeModel,
                        nextPray: nextPray,
                      ),
                    ),
                  ],
                );
              } else {
                return SizedBox.shrink();
              }
            },
          ),
        ),
        SizedBox(height: 30),
      ],
    );
  }
}

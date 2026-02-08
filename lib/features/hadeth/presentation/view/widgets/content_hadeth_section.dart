import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islaaaam_app/features/hadeth/presentation/manager/get_hadeth/get_hadeth_cubit.dart';
import 'package:islaaaam_app/features/hadeth/presentation/manager/show_arrow_cubit/show_arrow_cubit.dart';
import 'package:islaaaam_app/features/hadeth/presentation/view/widgets/card_hadeth.dart';

class ContentHadethSection extends StatelessWidget {
  const ContentHadethSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetHadethCubit, GetHadethState>(
      builder: (context, state) {
        if (state is GetHadethLoading) {
          return Center(
            child: CircularProgressIndicator(color: Color(0xffE2BE7F)),
          );
        } else if (state is GetHadethFauilre) {
          return Center(
            child: Text(
              "Someting is wrong",
              style: TextStyle(color: Color(0xffE2BE7F), fontSize: 30),
            ),
          );
        } else if (state is GetHadethSucsses) {
          return CarouselSlider.builder(
            carouselController: BlocProvider.of<ShowArrowCubit>(
              context,
            ).controller,
            itemCount: state.hadethModel.length,
            itemBuilder: (context, index, realIndex) {
              return CardHadeth(hadethModel: state.hadethModel[index]);
            },
            options: CarouselOptions(
              height: 650,
              enlargeCenterPage: true,
              viewportFraction: 0.70,
              initialPage: 0,
              enableInfiniteScroll: false,
              enlargeStrategy: CenterPageEnlargeStrategy.scale,
              onPageChanged: (index, reason) {
                BlocProvider.of<ShowArrowCubit>(
                  context,
                ).updateIndex(index, state.hadethModel.length);
              },
            ),
          );
        } else {
          return SizedBox.shrink();
        }
      },
    );
  }
}

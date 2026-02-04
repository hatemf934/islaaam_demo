import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:islaaaam_app/features/hadeth/view/widgets/card_hadeth.dart';

class ListViewHadethCard extends StatelessWidget {
  const ListViewHadethCard({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: 10,
      itemBuilder: (context, index, realIndex) {
        return const CardHadeth();
      },
      options: CarouselOptions(
        height: 650,
        enlargeCenterPage: true,
        viewportFraction: 0.70,
        initialPage: 0,
        enableInfiniteScroll: false,
        enlargeStrategy: CenterPageEnlargeStrategy.scale,
      ),
    );
  }
}

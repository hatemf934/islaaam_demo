import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islaaaam_app/features/hadeth/presentation/manager/show_arrow_cubit/show_arrow_cubit.dart';
import 'package:islaaaam_app/features/hadeth/presentation/view/widgets/icon_button_arrow.dart'
    show IconButtonArrow;

class ShowArrowSection extends StatelessWidget {
  const ShowArrowSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<ShowArrowCubit, ShowArrowState>(
            builder: (context, state) {
              if (state is ShowArrowBackFirst) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButtonArrow(
                      onPressed: () {
                        BlocProvider.of<ShowArrowCubit>(context).next();
                      },
                      iconData: Icons.arrow_forward_ios,
                    ),
                  ],
                );
              } else if (state is ShowArrowBackBoth) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButtonArrow(
                      onPressed: () {
                        BlocProvider.of<ShowArrowCubit>(context).previous();
                      },
                      iconData: Icons.arrow_back_ios,
                    ),
                    IconButtonArrow(
                      onPressed: () {
                        BlocProvider.of<ShowArrowCubit>(context).next();
                      },
                      iconData: Icons.arrow_forward_ios,
                    ),
                  ],
                );
              } else if (state is ShowArrowBackLast) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButtonArrow(
                      onPressed: () {
                        BlocProvider.of<ShowArrowCubit>(context).previous();
                      },
                      iconData: Icons.arrow_back_ios,
                    ),
                  ],
                );
              } else {
                return SizedBox.shrink();
              }
            },
          ),
        ],
      ),
    );
  }
}

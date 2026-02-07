import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islaaaam_app/features/sebha/presentation/manager/sepha_cubit/sepha_cubit.dart';

class SephaImageSection extends StatelessWidget {
  const SephaImageSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentGeometry.center,
      children: [
        Column(
          children: [
            Image.asset("assets/image/Group 37.png", scale: 4),
            Image.asset("assets/image/SebhaBody 1.png"),
          ],
        ),
        Column(
          children: [
            SizedBox(height: 80),
            TextButton(
              onPressed: () {
                BlocProvider.of<SephaCubit>(context).numberOfSepha();
              },
              child: Text(
                "سبحان الله",
                style: TextStyle(
                  fontSize: 44,
                  color: Color(0xffFFFFFF),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            BlocBuilder<SephaCubit, SephaState>(
              builder: (context, state) {
                if (state is SephaInitial) {
                  return Text(
                    "0",
                    style: TextStyle(
                      fontSize: 44,
                      color: Color(0xffFFFFFF),
                      fontWeight: FontWeight.bold,
                    ),
                  );
                } else if (state is SephaOnTapSepha) {
                  return Text(
                    state.numberOfSepha.toString(),
                    style: TextStyle(
                      fontSize: 44,
                      color: Color(0xffFFFFFF),
                      fontWeight: FontWeight.bold,
                    ),
                  );
                } else {
                  return SizedBox.shrink();
                }
              },
            ),

            BlocBuilder<SephaCubit, SephaState>(
              builder: (context, state) {
                if (state is SephaInitial) {
                  return SizedBox.shrink();
                } else if (state is SephaOnTapSepha) {
                  return IconButton(
                    onPressed: () {
                      BlocProvider.of<SephaCubit>(context).resetSepha();
                    },
                    icon: Icon(
                      Icons.restart_alt,
                      color: Color(0xffE2BE7F),
                      size: 40,
                    ),
                  );
                } else {
                  return SizedBox.shrink();
                }
              },
            ),
          ],
        ),
      ],
    );
  }
}

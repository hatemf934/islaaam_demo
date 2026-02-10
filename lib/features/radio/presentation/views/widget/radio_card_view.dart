import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islaaaam_app/features/radio/data/model/parent_model.dart';
import 'package:islaaaam_app/features/radio/data/model/reciters_model.dart';
import 'package:islaaaam_app/features/radio/presentation/views/manager/play_reciters_cubit/play_reciters_cubit.dart';
import 'package:islaaaam_app/features/radio/presentation/views/manager/radio_or_reciters_cubit/radio_or_reciters_cubit.dart';
import 'package:islaaaam_app/features/radio/presentation/views/manager/play_sound_cubit/play_sound_cubit.dart';
import 'package:islaaaam_app/features/radio/presentation/views/widget/icon_button_sound.dart';

class RadioCardView extends StatelessWidget {
  const RadioCardView({super.key, required this.parentModel});
  final ParentModel parentModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Container(
        height: 140,
        decoration: BoxDecoration(
          color: Color(0xffE2BE7F),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.max,
              children: [
                BlocBuilder<PlayRecitersCubit, PlayRecitersState>(
                  builder: (context, recitersState) {
                    return BlocBuilder<PlaySoundCubit, PlaySoundState>(
                      builder: (context, radioState) {
                        bool isThisPlaying =
                            (radioState is PlaySound &&
                                radioState.url == parentModel.url) ||
                            (recitersState is PlayReciters &&
                                recitersState.isPlaying &&
                                parentModel.url ==
                                    context
                                        .read<PlayRecitersCubit>()
                                        .currentUrl);
                        return Image.asset(
                          isThisPlaying
                              ? "assets/image/first_image_cropped_even_more.png"
                              : "assets/image/Mask group.png",
                          width: double.infinity,
                          fit: BoxFit.fitWidth,
                        );
                      },
                    );
                  },
                ),
              ],
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  parentModel.name,
                  style: TextStyle(
                    color: Color(0xff202020),
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                BlocBuilder<RadioOrRecitersCubit, RadioOrRecitersState>(
                  builder: (context, state) {
                    if (state is RadioState) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          BlocBuilder<PlaySoundCubit, PlaySoundState>(
                            builder: (context, state) {
                              bool isThisPlaying =
                                  state is PlaySound &&
                                  state.url == parentModel.url;

                              return IconButtonSound(
                                onPressed: () {
                                  if (isThisPlaying) {
                                    BlocProvider.of<PlaySoundCubit>(
                                      context,
                                    ).stopSound();
                                  } else {
                                    BlocProvider.of<PlaySoundCubit>(
                                      context,
                                    ).playSound(parentModel.url);
                                  }
                                },
                                iconData: isThisPlaying
                                    ? Icons.pause
                                    : Icons.play_arrow,
                              );
                            },
                          ),
                          BlocBuilder<PlaySoundCubit, PlaySoundState>(
                            builder: (context, soundState) {
                              bool currentIsMuted = false;
                              if (soundState is PlaySound) {
                                currentIsMuted =
                                    (soundState.url == parentModel.url) &&
                                    soundState.isMuted;
                              }
                              return IconButtonSound(
                                onPressed: () {
                                  BlocProvider.of<PlaySoundCubit>(
                                    context,
                                  ).toggleMute(parentModel.url);
                                },
                                iconData: currentIsMuted
                                    ? Icons.volume_off
                                    : Icons.volume_up,
                              );
                            },
                          ),
                        ],
                      );
                    } else {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButtonSound(
                            onPressed: () {
                              BlocProvider.of<PlayRecitersCubit>(
                                context,
                              ).previous();
                            },
                            iconData: Icons.skip_previous,
                          ),
                          BlocBuilder<PlayRecitersCubit, PlayRecitersState>(
                            builder: (context, state) {
                              bool isThisPlaying =
                                  state is PlayReciters &&
                                  state.isPlaying &&
                                  parentModel.url ==
                                      context
                                          .read<PlayRecitersCubit>()
                                          .currentUrl;
                              return IconButtonSound(
                                onPressed: () {
                                  if (isThisPlaying) {
                                    BlocProvider.of<PlayRecitersCubit>(
                                      context,
                                    ).stopSound();
                                  } else {
                                    if (parentModel is RecitersModel) {
                                      final reciter =
                                          parentModel as RecitersModel;
                                      BlocProvider.of<PlayRecitersCubit>(
                                        context,
                                      ).playPlaylist(
                                        reciter.allSurahsUrls,
                                        0,
                                        parentModel.url,
                                      );
                                    }
                                  }
                                },
                                iconData: isThisPlaying
                                    ? Icons.pause
                                    : Icons.play_arrow,
                              );
                            },
                          ),
                          IconButtonSound(
                            onPressed: () {
                              BlocProvider.of<PlayRecitersCubit>(
                                context,
                              ).next();
                            },
                            iconData: Icons.skip_next,
                          ),
                        ],
                      );
                    }
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

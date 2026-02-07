import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islaaaam_app/features/quran/presentation/manager/search_sura/search_sura_cubit.dart';
import 'package:islaaaam_app/features/quran/presentation/manager/get_sura_cubit/get_sura_cubit.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) {
        final getSuraCubit = context.read<GetSuraCubit>();
        if (getSuraCubit.state is GetSuraSucsses) {
          final fullList = (getSuraCubit.state as GetSuraSucsses).modelSura;
          BlocProvider.of<SearchSuraCubit>(context).searchSura(value, fullList);
        }
      },
      style: TextStyle(color: Colors.white),
      cursorColor: Color(0xffE2BE7F),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 15),
        prefixIcon: Image.asset(
          scale: 1.5,
          "assets/icon_bottom/Vector.png",
          color: Color(0xffE2BE7F),
        ),
        hintText: "Sura Name",
        hintStyle: TextStyle(color: Color(0xffFEFFE8), fontSize: 18),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: Color(0xffE2BE7F)),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}

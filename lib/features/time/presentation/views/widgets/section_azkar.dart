import 'package:flutter/material.dart';
import 'package:islaaaam_app/features/time/presentation/views/widgets/row_of_askar.dart';

class SectionAzkar extends StatelessWidget {
  const SectionAzkar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Askar", style: TextStyle(color: Color(0xffFEFFE8), fontSize: 18)),
        SizedBox(height: 40),
        RowOfAskar(),
      ],
    );
  }
}

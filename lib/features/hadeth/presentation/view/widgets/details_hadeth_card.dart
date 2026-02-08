import 'package:flutter/material.dart';
import 'package:islaaaam_app/features/hadeth/data/model/hadeth_model.dart';

class DetailsHadethCard extends StatelessWidget {
  const DetailsHadethCard({super.key, required this.hadethModel});
  final HadethModel hadethModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset("assets/image/left_corner.png", scale: 1.2),
              Expanded(
                child: Text(
                  hadethModel.titleHadeth,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
              ),
              Image.asset("assets/image/right_corner.png", scale: 1.2),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Text(
                textAlign: TextAlign.center,
                hadethModel.contentHadeth,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

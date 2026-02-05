import 'package:flutter/material.dart';
import 'package:islaaaam_app/features/radio/views/widget/radio_elveted_button.dart';

class RadioView extends StatelessWidget {
  const RadioView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          Center(child: Image.asset('assets/image/Group 31.png', height: 170)),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RadioElvetedButton(textTitle: "Radio"),
              RadioElvetedButton(textTitle: "Reciters"),
            ],
          ),
        ],
      ),
    );
  }
}

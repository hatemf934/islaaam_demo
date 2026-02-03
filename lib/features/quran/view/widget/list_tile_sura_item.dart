import 'package:flutter/material.dart';

class ListTileSuraItem extends StatelessWidget {
  const ListTileSuraItem({super.key, required this.numberOfSura});
  final int numberOfSura;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: ListTile(
        leading: Stack(
          children: [
            Image.asset("assets/image/img_sur_number_frame.png"),
            Positioned(
              right: 20,
              top: 10,
              child: Text(
                numberOfSura.toString(),
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ],
        ),
        title: Text(
          "Al-Fatiha",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text("7 Verses", style: TextStyle(color: Colors.white)),
        trailing: Text(
          "الفاتحه",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

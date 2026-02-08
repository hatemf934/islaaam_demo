import 'package:flutter/material.dart';

class ButtomNavigatorBar extends StatefulWidget {
  const ButtomNavigatorBar({
    super.key,
    required this.onTap,
    required this.currentindex,
  });
  static String id = "bottom_navigator_bar";
  final Function(int) onTap;
  final int currentindex;
  @override
  State<ButtomNavigatorBar> createState() => _ButtomNavigatorBarState();
}

class _ButtomNavigatorBarState extends State<ButtomNavigatorBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: widget.currentindex,
      type: BottomNavigationBarType.fixed,
      iconSize: 30,
      backgroundColor: Color(0xffE2BE7F),
      showUnselectedLabels: false,
      selectedItemColor: Color(0xffFFFFFF),
      unselectedItemColor: Color(0xff202020),
      onTap: widget.onTap,
      items: <BottomNavigationBarItem>[
        buildNavItem("assets/icon_bottom/Vector.png", "Quran"),
        buildNavItem("assets/icon_bottom/ic_hadeth.png", "Hadeth"),
        buildNavItem("assets/icon_bottom/ic_sebha.png", "Sepha"),
        buildNavItem("assets/icon_bottom/ic_radio.png", "Radio"),
        buildNavItem("assets/icon_bottom/ic_time.png", "Time"),
      ],
    );
  }
}

BottomNavigationBarItem buildNavItem(String path, String label) {
  return BottomNavigationBarItem(
    label: label,
    icon: Image.asset(path, width: 24, color: Color(0xff202020)),
    activeIcon: Container(
      width: 59,
      height: 34,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(66),
        color: const Color(0x99202020),
      ),
      child: Image.asset(path, scale: 2.5, color: Colors.white),
    ),
  );
}

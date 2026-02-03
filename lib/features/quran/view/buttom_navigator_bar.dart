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
        BottomNavigationBarItem(
          activeIcon: Container(
            width: 59,
            height: 34,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(66),
              color: Color(0xff20202099),
            ),
            child: Image.asset("assets/icon_bottom/Vector.png", scale: 2),
          ),
          icon: Image.asset("assets/icon_bottom/Vector.png", width: 24),
          label: 'Quran',
        ),
        BottomNavigationBarItem(
          activeIcon: Container(
            width: 59,
            height: 34,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(66),
              color: Color(0xff20202099),
            ),
            child: Image.asset("assets/icon_bottom/ic_hadeth.png", scale: 2),
          ),
          icon: Image.asset("assets/icon_bottom/ic_hadeth.png", width: 24),
          label: 'Hadeth',
        ),
        BottomNavigationBarItem(
          activeIcon: Container(
            width: 59,
            height: 34,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(66),
              color: Color(0xff20202099),
            ),
            child: Image.asset("assets/icon_bottom/ic_sebha.png", scale: 2),
          ),
          icon: Image.asset("assets/icon_bottom/ic_sebha.png", width: 24),
          label: 'Hadeth',
        ),
        BottomNavigationBarItem(
          activeIcon: Container(
            width: 59,
            height: 34,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(66),
              color: Color(0xff20202099),
            ),
            child: Image.asset("assets/icon_bottom/ic_radio.png", scale: 2),
          ),
          icon: Image.asset("assets/icon_bottom/ic_radio.png", width: 24),
          label: 'Hadeth',
        ),
        BottomNavigationBarItem(
          activeIcon: Container(
            width: 59,
            height: 34,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(66),
              color: Color(0xff20202099),
            ),
            child: Image.asset("assets/icon_bottom/ic_time.png", scale: 2),
          ),
          icon: Image.asset("assets/icon_bottom/ic_time.png", width: 24),
          label: 'Hadeth',
        ),
      ],
    );
  }
}

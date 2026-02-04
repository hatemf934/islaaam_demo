import 'package:flutter/material.dart';

class AppBarDetailsContent extends StatelessWidget
    implements PreferredSizeWidget {
  const AppBarDetailsContent({super.key, required this.tilteAppBar});
  final String tilteAppBar;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back, color: Color(0xffE2BE7F)),
      ),
      title: Text(tilteAppBar, style: TextStyle(color: Color(0xffE2BE7F))),
      backgroundColor: Color(0xff202020),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

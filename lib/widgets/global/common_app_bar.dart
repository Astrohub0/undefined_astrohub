import 'package:astro_hub/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool? isBackButton;

  const CommonAppBar({super.key, required this.title, this.isBackButton});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        // top: MediaQuery.of(context).padding.top,
        top: 20,
        left: 35,
        right: 45,
      ),
      child: AppBar(
        automaticallyImplyLeading: isBackButton ?? true,
        leading: isBackButton == true
            ? BackButton(
                color: Colors.white,
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            : null,
        title: isBackButton == true
            ? Center(
                child: Text(
                  title,
                  style: TextStyles.appBarText,
                ),
              )
            : Image.asset('assets/images/logo.png', width: 104),
        actions: [
          GestureDetector(
              onTap: (() {
                Scaffold.of(context).openEndDrawer();
              }),
              child: SvgPicture.asset('assets/icons/hamburger.svg')),
        ],
      ),
    );
  }
}

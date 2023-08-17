import 'package:astro_hub/constants/styles.dart';
import 'package:flutter/material.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool? isBackButton;

  CommonAppBar({required this.title, this.isBackButton});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: isBackButton ?? true,
      leading: isBackButton == true
          ? BackButton(
              color: Colors.white,
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          : Image.asset('assets/images/logo.png'),
      backgroundColor: Colors.transparent,
      title: Center(
        child: Text(
          title,
          style: TextStyles.appBarText,
        ),
      ),
      actions: [
        IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: (() {}),
        ),
      ],
    );
  }
}

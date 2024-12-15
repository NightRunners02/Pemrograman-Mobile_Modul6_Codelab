import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routes/app_pages.dart';

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  String titleText;
  CustomAppBar({
    Key?key,
    required this.titleText,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(titleText),
      actions: <Widget>[
        PopupMenuButton<int>(
          onSelected: (value) {
            switch (value) {
              case 0:
                Get.toNamed(Routes.HTTP);
                break;
              case 1:
                Get.toNamed(Routes.DIO);
                break;
              case 2:
                Get.toNamed(Routes.GETCONNECT);
                break;
            }
          },
          itemBuilder: (context) => [
            const PopupMenuItem(
              value: 0,
              child: TextButton(
                onPressed: null,
                child: Text("HTTP Page"),
              ),
            ),
            const PopupMenuItem(
              value: 1,
              child: TextButton(
                onPressed: null,
                child: Text("Dio Page"),
              ),
            ),
            const PopupMenuItem(
              value: 2,
              child: TextButton(
                onPressed: null,
                child: Text("GetConnect Page"),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
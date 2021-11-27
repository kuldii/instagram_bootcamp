import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './page_2.dart';

class PageSatu extends StatelessWidget {
  const PageSatu({Key? key}) : super(key: key);

  static const routeName = "page_satu";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: OutlinedButton(
        onPressed: () {
          // Navigator.of(context).push(
          //   MaterialPageRoute(
          //     builder: (context) => PageDua(),
          //   ),
          // );
          // Navigator.of(context).pushNamed(PageDua.routeName);
          // Get.to(PageDua());
          // Get.toNamed(PageDua.routeName);
        },
        child: Text(
          "INI PAGE 1",
        ),
      ),
    );
  }
}

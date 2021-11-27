import 'package:flutter/material.dart';

import './page_3.dart';

class PageDua extends StatelessWidget {
  const PageDua({Key? key}) : super(key: key);

  static const routeName = "page_dua";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PAGE 2"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              onPressed: () {
                // Navigator.of(context).push(
                //   MaterialPageRoute(
                //     builder: (context) => PageTiga(),
                //   ),
                // );
                Navigator.of(context).pushNamed(PageTiga.routeName);
              },
              child: Text(
                "PINDAH KE PAGE 3",
              ),
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.of(context).pop();
                // Navigator.pop(context);
              },
              child: Text(
                "BACK KE PAGE 1",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

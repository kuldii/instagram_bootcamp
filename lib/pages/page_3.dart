import 'package:flutter/material.dart';

class PageTiga extends StatelessWidget {
  const PageTiga({Key? key}) : super(key: key);

  static const routeName = "page_tiga";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PAGE 3"),
      ),
      body: Center(
        child: OutlinedButton(
          onPressed: () {
            Navigator.of(context).pop();
            // Navigator.pop(context);
          },
          child: Text(
            "BACK KE PAGE 2",
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({
    Key? key,
    required this.jumlah,
    required this.title,
  }) : super(key: key);

  final String jumlah;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          jumlah,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 23,
          ),
        ),
        Text(title),
      ],
    );
  }
}

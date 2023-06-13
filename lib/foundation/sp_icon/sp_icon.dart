import 'package:flutter/material.dart';

class SPIcon extends StatelessWidget {
  const SPIcon(
      {Key? key, required this.assetName, this.index, this.currentIndex})
      : super(key: key);
  final String assetName;
  final int? index;
  final int? currentIndex;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/$assetName',
      height: 25,
      width: 25,
      color: index == currentIndex ? const Color(0xfffe416c) : Colors.black,
    );
  }
}

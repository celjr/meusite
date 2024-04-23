import 'package:flutter/material.dart';

class SectionWidget extends StatelessWidget {
  const SectionWidget({super.key, required this.height, required this.color});
  final double height;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: height,
      color: color,
    );
  }
}
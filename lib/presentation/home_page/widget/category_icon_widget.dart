import 'package:flutter/material.dart';

class CategoryIconWidget extends StatelessWidget {
  const CategoryIconWidget({
    Key? key,
    required this.color,
    required this.iconButton,
  }) : super(key: key);

  final Color color;
  final IconButton iconButton;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      margin: const EdgeInsets.only(left: 23),
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(Radius.circular(35)),
      ),
      child: iconButton,
    );
  }
}

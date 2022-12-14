import 'package:flutter/material.dart';

class CategoryIconWidget extends StatelessWidget {
  const CategoryIconWidget({
    Key? key,
    required this.color,
    required this.iconButton,
    required this.text,
  }) : super(key: key);

  final Color color;
  final IconButton iconButton;
  final Text text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      // mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          width: 70,
          height: 70,
          margin: const EdgeInsets.only(left: 23),

          decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.all(Radius.circular(35)),
          ),
          child: iconButton,
        ),
        const SizedBox(height: 7),
        Padding(
          padding: const EdgeInsets.only(left: 24),
          child: text,
        ),
      ],
    );
  }
}

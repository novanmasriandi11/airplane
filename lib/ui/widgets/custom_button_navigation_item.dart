import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class CustomButtonNavigationItem extends StatelessWidget {
  final bool isSelected;
  final String imageUrl;
  const CustomButtonNavigationItem({
    Key? key,
    required this.imageUrl,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(),
        Image.asset(
          imageUrl,
          width: 24,
          height: 24,
        ),
        Container(
          width: 30,
          height: 2,
          decoration: BoxDecoration(
            color: isSelected ? primaryColor : customTransparent,
            borderRadius: BorderRadius.circular(18),
          ),
        ),
      ],
    );
  }
}

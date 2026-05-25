import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';

class TopToolbar extends StatelessWidget {
  const TopToolbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      color: AppColors.toolbarBackground,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(Icons.undo, color: AppColors.iconColor),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.save_alt, color: AppColors.iconColor),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
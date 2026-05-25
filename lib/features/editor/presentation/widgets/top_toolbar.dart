import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';

class TopToolbar extends StatelessWidget {
  const TopToolbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      color: AppColors.toolbarBackground,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        children: [
          IconButton(
            icon: const Icon(Icons.arrow_back, color: AppColors.iconColor),
            tooltip: 'العودة للمشاريع',
            onPressed: () => Navigator.pop(context),
          ),
          const Spacer(),
          IconButton(
            icon: const Icon(Icons.undo, color: AppColors.iconColor),
            tooltip: 'تراجع',
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.redo, color: AppColors.iconColor),
            tooltip: 'إعادة',
            onPressed: () {},
          ),
          const SizedBox(width: 4),
          IconButton(
            icon: Icon(Icons.save_alt, color: AppColors.accentBlueLight),
            tooltip: 'تصدير',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';

class TopToolbar extends StatelessWidget {
  const TopToolbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      decoration: BoxDecoration(
        color: AppColors.editorToolbar,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8),
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
            icon: const Icon(Icons.download_rounded,
                color: AppColors.primaryBlue),
            tooltip: 'تصدير',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
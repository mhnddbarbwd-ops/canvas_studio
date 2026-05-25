import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/constants/app_colors.dart';

class SizePickerSheet extends StatelessWidget {
  const SizePickerSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'اختر أبعاد المشروع',
            style: GoogleFonts.tajawal(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: AppColors.textPrimary,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildSizeOption(context, 'مربع', 400, 400),
              _buildSizeOption(context, '16:9', 480, 270),
              _buildSizeOption(context, '4:3', 400, 300),
            ],
          ),
          const SizedBox(height: 12),
          _buildSizeOption(context, 'مخصص', 400, 400, isCustom: true),
        ],
      ),
    );
  }

  Widget _buildSizeOption(
    BuildContext context,
    String label,
    double width,
    double height, {
    bool isCustom = false,
  }) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
        Navigator.pushNamed(
          context,
          '/editor',
          arguments: {'width': width, 'height': height},
        );
      },
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: AppColors.surfaceWhite,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: AppColors.editorCanvasBorder),
        ),
        child: Column(
          children: [
            Icon(
              isCustom ? Icons.aspect_ratio : Icons.crop_original,
              color: AppColors.primaryBlue,
              size: 28,
            ),
            const SizedBox(height: 8),
            Text(
              label,
              style: GoogleFonts.tajawal(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: AppColors.textPrimary,
              ),
            ),
            Text(
              '${width.toInt()}×${height.toInt()}',
              style: GoogleFonts.tajawal(
                fontSize: 12,
                color: AppColors.textSecondary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/constants/app_colors.dart';

class CreateProjectSheet extends StatelessWidget {
  const CreateProjectSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'إنشاء مشروع جديد',
            style: GoogleFonts.tajawal(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: AppColors.textPrimary,
            ),
          ),
          const SizedBox(height: 24),
          ListTile(
            leading: const Icon(Icons.image,
                color: AppColors.accentBlueLight, size: 36),
            title: Text(
              'تحرير صورة',
              style: GoogleFonts.tajawal(
                fontSize: 16,
                color: AppColors.textPrimary,
              ),
            ),
            subtitle: Text(
              'ابدأ بتصميم صورة جديدة',
              style: GoogleFonts.tajawal(color: AppColors.textSecondary),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/editor');
            },
          ),
          const Divider(color: AppColors.textSecondary),
          ListTile(
            leading: const Icon(Icons.videocam,
                color: AppColors.accentBlueLight, size: 36),
            title: Text(
              'تحرير فيديو',
              style: GoogleFonts.tajawal(
                fontSize: 16,
                color: AppColors.textPrimary,
              ),
            ),
            subtitle: Text(
              'قريباً...',
              style: GoogleFonts.tajawal(color: AppColors.textSecondary),
            ),
            enabled: false,
            onTap: null,
          ),
        ],
      ),
    );
  }
}
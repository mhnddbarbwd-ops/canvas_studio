import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/create_project_sheet.dart';
import '../../../../core/constants/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBackground,
      appBar: AppBar(
        title: Text(
          'Canvas Studio',
          style: GoogleFonts.tajawal(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: AppColors.accentBlueLight,
          ),
        ),
        centerTitle: true,
        backgroundColor: AppColors.surfaceDark,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.photo_library_outlined,
                size: 80, color: AppColors.accentBlue.withOpacity(0.3)),
            const SizedBox(height: 24),
            Text(
              'لا توجد مشاريع بعد',
              style: GoogleFonts.tajawal(
                fontSize: 18,
                color: AppColors.textSecondary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'اضغط على + لإنشاء مشروع جديد',
              style: GoogleFonts.tajawal(
                fontSize: 14,
                color: AppColors.textSecondary.withOpacity(0.7),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            backgroundColor: AppColors.surfaceDark,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            ),
            builder: (context) => const CreateProjectSheet(),
          );
        },
        child: const Icon(Icons.add, size: 32),
      ),
    );
  }
}
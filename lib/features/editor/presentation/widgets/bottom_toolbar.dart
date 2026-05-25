import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uuid/uuid.dart';
import '../../../../core/constants/app_colors.dart';
import '../../providers/canvas_provider.dart';
import '../../data/models/layer_model.dart';

class BottomToolbar extends ConsumerWidget {
  const BottomToolbar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 80,
      decoration: const BoxDecoration(
        color: AppColors.toolbarBackground,
        border: Border(
          top: BorderSide(color: AppColors.surfaceDark, width: 1),
        ),
      ),
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildToolButton(
            icon: Icons.text_fields_rounded,
            label: 'نص',
            onTap: () {},
          ),
          _buildToolButton(
            icon: Icons.add_photo_alternate_outlined,
            label: 'صورة',
            onTap: () {},
          ),
          _buildToolButton(
            icon: Icons.emoji_emotions_outlined,
            label: 'ملصق',
            onTap: () {},
          ),
          _buildToolButton(
            icon: Icons.tune,
            label: 'فلتر',
            onTap: () {},
          ),
          _buildToolButton(
            icon: Icons.layers_outlined,
            label: 'طبقة',
            onTap: () {
              final newLayer = LayerModel(
                id: const Uuid().v4(),
                type: LayerType.rectangle,
                x: 20.0 + (ref.read(canvasProvider).layers.length * 10),
                y: 20.0 + (ref.read(canvasProvider).layers.length * 10),
                color: AppColors.accentBlue,
              );
              ref.read(canvasProvider.notifier).addLayer(newLayer);
            },
          ),
        ],
      ),
    );
  }

  Widget _buildToolButton({
    required IconData icon,
    required String label,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, color: AppColors.iconColor, size: 26),
            const SizedBox(height: 4),
            Text(
              label,
              style: GoogleFonts.tajawal(
                color: AppColors.iconColor,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
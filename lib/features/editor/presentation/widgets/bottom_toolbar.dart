import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';
import '../../../../core/constants/app_colors.dart';
import '../../providers/canvas_provider.dart';
import '../../data/models/layer_model.dart';

class BottomToolbar extends ConsumerWidget {
  const BottomToolbar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 72,
      color: AppColors.toolbarBackground,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildToolButton(Icons.text_fields, 'نص', () {}),
          _buildToolButton(Icons.image, 'صورة', () {}),
          _buildToolButton(Icons.sticky_note_2, 'ملصق', () {}),
          _buildToolButton(Icons.filter, 'فلتر', () {}),
          _buildToolButton(Icons.layers, 'طبقات', () {
            final newLayer = LayerModel(
              id: const Uuid().v4(),
              type: LayerType.rectangle,
              x: 20.0 + (ref.read(canvasProvider).layers.length * 10),
              y: 20.0 + (ref.read(canvasProvider).layers.length * 10),
              color: Colors.blue,
            );
            ref.read(canvasProvider.notifier).addLayer(newLayer);
          }),
        ],
      ),
    );
  }

  Widget _buildToolButton(IconData icon, String label, VoidCallback onTap) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: Icon(icon, color: AppColors.iconColor),
          onPressed: onTap,
        ),
        Text(
          label,
          style: const TextStyle(color: AppColors.iconColor, fontSize: 11),
        ),
      ],
    );
  }
}
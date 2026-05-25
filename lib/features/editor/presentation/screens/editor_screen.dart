import 'package:flutter/material.dart';
import '../widgets/top_toolbar.dart';
import '../widgets/canvas_area.dart';
import '../widgets/bottom_toolbar.dart';

class EditorScreen extends StatelessWidget {
  const EditorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // استخراج الأبعاد من الوسائط التي تم تمريرها
    final args =
        ModalRoute.of(context)?.settings.arguments as Map<String, double>?;
    final canvasWidth = args?['width'] ?? 400;
    final canvasHeight = args?['height'] ?? 400;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const TopToolbar(),
            Expanded(
              child: CanvasArea(
                canvasWidth: canvasWidth,
                canvasHeight: canvasHeight,
              ),
            ),
            const BottomToolbar(),
          ],
        ),
      ),
    );
  }
}
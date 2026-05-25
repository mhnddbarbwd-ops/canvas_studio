import 'package:flutter/material.dart';
import '../widgets/top_toolbar.dart';
import '../widgets/canvas_area.dart';
import '../widgets/bottom_toolbar.dart';

class EditorScreen extends StatelessWidget {
  const EditorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const TopToolbar(),
            const Expanded(child: CanvasArea()),
            const BottomToolbar(),
          ],
        ),
      ),
    );
  }
}
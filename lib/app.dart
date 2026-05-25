import 'package:flutter/material.dart';
import 'core/theme/app_theme.dart';
import 'features/editor/presentation/screens/editor_screen.dart';

class PhotoEditorApp extends StatelessWidget {
  const PhotoEditorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Canvas Studio',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const EditorScreen(),
    );
  }
}
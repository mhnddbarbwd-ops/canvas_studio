import 'package:flutter/material.dart';

enum LayerType { rectangle, image, text, sticker }

class LayerModel {
  final String id;
  LayerType type;
  double x;
  double y;
  double scale;
  double rotation;
  Color color;
  String? text;
  double? fontSize;
  String? imagePath;

  LayerModel({
    required this.id,
    required this.type,
    this.x = 0,
    this.y = 0,
    this.scale = 1.0,
    this.rotation = 0,
    this.color = Colors.blue,
    this.text,
    this.fontSize,
    this.imagePath,
  });

  Matrix4 get transformationMatrix {
    final translation = Matrix4.translationValues(x, y, 0);
    final rotationMat = Matrix4.rotationZ(rotation);
    final scaleMat = Matrix4.diagonal3Values(scale, scale, 1);
    return translation * rotationMat * scaleMat;
  }
}
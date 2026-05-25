import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../providers/canvas_provider.dart';

class CanvasArea extends ConsumerWidget {
  final double canvasWidth;
  final double canvasHeight;

  const CanvasArea({
    super.key,
    required this.canvasWidth,
    required this.canvasHeight,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final canvasState = ref.watch(canvasProvider);

    return InteractiveViewer(
      boundaryMargin: const EdgeInsets.all(double.infinity),
      minScale: 0.1,
      maxScale: 5.0,
      child: Center(
        child: Container(
          width: canvasWidth,
          height: canvasHeight,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey.shade300),
          ),
          child: Stack(
            children: canvasState.layers.map((layer) {
              return Positioned(
                left: layer.x,
                top: layer.y,
                child: Transform(
                  transform: layer.transformationMatrix,
                  child: Container(
                    width: 100,
                    height: 100,
                    color: layer.color,
                    child: const Center(
                      child: Text(
                        'طبقة',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
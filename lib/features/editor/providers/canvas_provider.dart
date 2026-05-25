import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../data/models/layer_model.dart';

class CanvasState {
  final List<LayerModel> layers;
  final String? selectedLayerId;

  CanvasState({
    required this.layers,
    this.selectedLayerId,
  });

  CanvasState copyWith({
    List<LayerModel>? layers,
    String? selectedLayerId,
  }) {
    return CanvasState(
      layers: layers ?? this.layers,
      selectedLayerId: selectedLayerId ?? this.selectedLayerId,
    );
  }
}

class CanvasNotifier extends StateNotifier<CanvasState> {
  CanvasNotifier() : super(CanvasState(layers: []));

  void addLayer(LayerModel layer) {
    state = state.copyWith(layers: [...state.layers, layer]);
  }

  void selectLayer(String id) {
    state = state.copyWith(selectedLayerId: id);
  }

  void clearSelection() {
    state = state.copyWith(selectedLayerId: null);
  }
}

final canvasProvider = StateNotifierProvider<CanvasNotifier, CanvasState>(
  (ref) => CanvasNotifier(),
);
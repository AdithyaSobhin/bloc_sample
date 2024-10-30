part of 'color_bloc.dart';

class ColorState {
  Color selectedColor;
  ColorState({required this.selectedColor});
}

final class ColorInitial extends ColorState {
  ColorInitial({required super.selectedColor});
}

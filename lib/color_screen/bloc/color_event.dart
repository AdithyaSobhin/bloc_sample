part of 'color_bloc.dart';

@immutable
sealed class ColorEvent {}

class ColorSelection extends ColorEvent {
  Color newColor;
  ColorSelection({required this.newColor});
}

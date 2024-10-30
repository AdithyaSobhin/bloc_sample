import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'color_event.dart';
part 'color_state.dart';

class ColorBloc extends Bloc<ColorEvent, ColorState> {
  ColorBloc() : super(ColorInitial(selectedColor: Colors.yellow)) {
    on<ColorSelection>((event, emit) {
      emit(ColorState(selectedColor: event.newColor));
    });
  }
}

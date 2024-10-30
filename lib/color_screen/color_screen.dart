import 'package:bloc_sample/color_screen/bloc/color_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ColorScreen extends StatelessWidget {
  const ColorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Color> colorList = [
      Colors.red,
      Colors.blue,
      Colors.green,
      Colors.orange,
      Colors.purple,
      Colors.yellow,
      Colors.teal,
      Colors.cyan,
      Colors.pink,
      Colors.brown,
    ];
    return BlocBuilder<ColorBloc, ColorState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: state.selectedColor,
          body: ListView.separated(
              itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      context
                          .read<ColorBloc>()
                          .add(ColorSelection(newColor: colorList[index]));
                    },
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 10),
                      child: Container(
                        color: colorList[index],
                        height: 50,
                      ),
                    ),
                  ),
              separatorBuilder: (context, index) => SizedBox(
                    height: 10,
                  ),
              itemCount: colorList.length),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_6/Cubits/cubit4/cubit4_cubit.dart';

class ScreenUsingCubit extends StatelessWidget {
  const ScreenUsingCubit({super.key});

  @override
  Widget build(BuildContext context) {
    Cubit4Cubit cubit = context.read<Cubit4Cubit>();
    Widget buildDisplay() {
      switch (cubit.currentDisplay) {
        case 'Show text':
          return const Text('This is a text');
        case 'Show cubit image':
          return Image.asset("lib/assets/cubit.png");
        case 'Show red circle':
          return Container(
            width: 100,
            height: 100,
            decoration: const BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
            ),
          );
        default:
          return Container();
      }
    }

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BlocBuilder<Cubit4Cubit, Cubit4State>(
          builder: (context, state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Center(
                    child: buildDisplay(),
                  ),
                ),
                ElevatedButton(
                  onPressed: cubit.showText,
                  child: const Text('Show text'),
                ),
                ElevatedButton(
                  onPressed: cubit.showCubitImage,
                  child: const Text('Show cubit image'),
                ),
                ElevatedButton(
                  onPressed: cubit.showRedCircle,
                  child: const Text('Show red circle'),
                ),
                ElevatedButton(
                  onPressed: cubit.reset,
                  child: const Text('Reset'),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

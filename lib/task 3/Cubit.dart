import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_6/Cubits/cubit3/cubit3_cubit.dart';

class RadioListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Cubit3Cubit _cubit = context.read<Cubit3Cubit>();
    return Scaffold(
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return BlocBuilder<Cubit3Cubit, Cubit3State>(
            builder: (context, state) {
              return ListTile(
                title: Text('Option ${index + 1}'),
                leading: Radio<int>(
                  value: index,
                  groupValue: _cubit.selectedRadioIndex,
                  onChanged: _cubit.handleRadioValueChange,
                ),
              );
            },
          );
        },
      ),
    );
  }
}

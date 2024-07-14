import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_6/Cubits/cubit1/filter_cubit_cubit.dart';

class FastFilterBarUsingCubit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FilterCubitCubit _cubit = context.read<FilterCubitCubit>();
    return Container(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return BlocBuilder<FilterCubitCubit, FilterCubitState>(
            builder: (context, state) {
              return InkWell(
                onTap: () {
                  _cubit.FilterChange(index);
                },
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: _cubit.selectedIndex == index
                          ? Colors.red
                          : Colors.grey,
                    ),
                    child: Text('Number ${index + 1}',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

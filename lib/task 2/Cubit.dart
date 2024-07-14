import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_6/Cubits/cubit2/cubit2_cubit.dart';

class PasswordFieldUsingCubit extends StatelessWidget {
  const PasswordFieldUsingCubit({super.key});

  @override
  Widget build(BuildContext context) {
    Cubit2Cubit _cubit = context.read<Cubit2Cubit>();
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: BlocBuilder<Cubit2Cubit, Cubit2State>(
        builder: (context, state) {
          return TextFormField(
            obscureText: _cubit.obscureText,
            decoration: InputDecoration(
              labelText: 'Password',
              suffixIcon: IconButton(
                icon: Icon(
                  _cubit.obscureText ? Icons.visibility : Icons.visibility_off,
                ),
                onPressed: _cubit.toggleVisibility,
              ),
            ),
          );
        },
      ),
    );
  }
}

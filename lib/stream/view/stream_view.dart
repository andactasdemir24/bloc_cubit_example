import 'package:bloc_cubit_example/stream/cubit/stream_cubit.dart';
import 'package:bloc_cubit_example/stream/cubit/stream_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StreamView extends StatelessWidget {
  const StreamView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<StreamCubit, StreamState>(
        builder: (context, state) {
          if (state is StreamInitial) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  onChanged: (value) => context.read<StreamCubit>().changeText(value),
                ),
                Text(state.text),
              ],
            );
          } else {
            return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}

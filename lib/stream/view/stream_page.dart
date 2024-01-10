import 'package:bloc_cubit_example/stream/cubit/stream_cubit.dart';
import 'package:bloc_cubit_example/stream/view/stream_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StreamPage extends StatelessWidget {
  const StreamPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => StreamCubit(),
      child: const StreamView(),
    );
  }
}

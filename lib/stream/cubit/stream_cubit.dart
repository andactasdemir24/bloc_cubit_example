import 'package:bloc_cubit_example/stream/cubit/stream_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StreamCubit extends Cubit<StreamState> {
  StreamCubit() : super(const StreamInitial(""));

  changeText(String value) {
    emit(StreamInitial(value));
  }
}

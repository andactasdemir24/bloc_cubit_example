import 'package:equatable/equatable.dart';

abstract class StreamState extends Equatable {
  const StreamState();
}

class StreamInitial extends StreamState {
  final String text;
  const StreamInitial(this.text);

  StreamInitial copyWith({String? text}) {
    return StreamInitial(text ?? this.text);
  }

  @override
  List<Object?> get props => [text];
}

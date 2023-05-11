import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';

class TestBloc extends Bloc<TestEvent, TestState> {
  TestBloc() : super(TestState(name: '')) {
    on<TestEvent>((event, emit) {
      log('State Refresh');
      emit(TestState(name: event.name));
    });
  }
}

class TestEvent {
  final String name;
  TestEvent({
    required this.name,
  });
}

class TestState {
  final String name;
  TestState({
    required this.name,
  });
}

import 'package:flutter_bloc/flutter_bloc.dart';

// Define the events
abstract class CounterEvent {}

class CounterIncrement extends CounterEvent {}

class CounterDecrement extends CounterEvent {}

class CounterReset extends CounterEvent {}

// Define the Bloc
class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<CounterIncrement>((event, emit) => emit(state + 1));
    on<CounterDecrement>((event, emit) => emit(state - 1));
    on<CounterReset>((event, emit) => emit(0));
  }
}

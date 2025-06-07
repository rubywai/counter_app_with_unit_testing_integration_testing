import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:untitled/counter_bloc/counter_bloc.dart';

void main() {
  group('CounterBloc', () {
    late CounterBloc counterBloc;

    setUp(() {
      counterBloc = CounterBloc();
    });

    tearDown(() {
      counterBloc.close();
    });

    test('initial state is 0', () {
      expect(counterBloc.state, 0);
    });

    blocTest<CounterBloc, int>(
      'emits [1] when CounterIncrement is added',
      build: () => CounterBloc(),
      act: (bloc) => bloc.add(CounterIncrement()),
      expect: () => [1],
    );

    blocTest<CounterBloc, int>(
      'emits [-1] when CounterDecrement is added',
      build: () => CounterBloc(),
      act: (bloc) => bloc.add(CounterDecrement()),
      expect: () => [-1],
    );

    blocTest<CounterBloc, int>(
      'emits [0] after CounterReset is added',
      build: () => CounterBloc()..emit(5), // start from non-zero
      act: (bloc) => bloc.add(CounterReset()),
      expect: () => [0],
    );

    blocTest<CounterBloc, int>(
      'emits [1, 0] when increment then reset',
      build: () => CounterBloc(),
      act: (bloc) {
        bloc.add(CounterIncrement());
        bloc.add(CounterReset());
      },
      expect: () => [1, 0],
    );
  });
}

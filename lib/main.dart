import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_bloc/counter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider<CounterBloc>(
        create: (context) => CounterBloc(),
        child: const Home(),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final counterBloc = BlocProvider.of<CounterBloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter app with bloc pattern'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocConsumer<CounterBloc, int>(
            listener: (context, state) {},
            builder: (context, state) {
              return Center(
                child: Text(
                  'The counter is $state',
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              );
            },
          ),
          const SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {
                  counterBloc.add(CounterIncrement());
                },
                child: const Text('Increment'),
              ),
              ElevatedButton(
                key: ValueKey('decrement'),
                onPressed: () {
                  counterBloc.add(CounterDecrement());
                },
                child: const Text('Decrement'),
              ),
              ElevatedButton(
                onPressed: () {
                  counterBloc.add(CounterReset());
                },
                child: const Text('Reset'),
              ),
            ],
          )
        ],
      ),
    );
  }
}

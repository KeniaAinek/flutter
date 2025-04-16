import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forms_app/presentation/blocs/counter_bloc/counter_bloc.dart';

class BlocCounterScreen extends StatelessWidget {
  const BlocCounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider (
      create: (_) => CounterBloc(),
      child: const BlocCounterView()
    );
  }
}

class BlocCounterView extends StatelessWidget {
  const BlocCounterView({
    super.key,
  });

  void increasedCounterBy( BuildContext context, [ int value = 1 ]){
    context.read<CounterBloc>().add( CounterIncreased(value) );
  }

  void resetCounter( BuildContext context, [ int value = 0]){
    context.read<CounterBloc>().add( CounterReset(value));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: context.select(
          (CounterBloc counterBloc) => Text('Bloc Counter: ${ counterBloc.state.transactionCount} ')
        ),
        actions: [
          IconButton(
            onPressed: () => {
              resetCounter(context)
            }, 
            icon: const Icon( Icons.refresh_outlined )
          )
        ],
      ),
      body: Center(
        child: context.select(
          (CounterBloc counterBloc ) => Text('Conter Value: ${ counterBloc.state.counter }'),
        ), 
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: 1,
            child: const Text('+3'),
            onPressed: () => increasedCounterBy(context, 3)
          ),
    
          SizedBox(height: 10),
    
          FloatingActionButton(
            heroTag: 2,
            child: const Text('+2'),
            onPressed: () => increasedCounterBy(context, 2)
          ),
    
          SizedBox(height: 10),
    
          FloatingActionButton(
            heroTag: 3,
            child: const Text('+1'),
            onPressed: () => increasedCounterBy(context, 1)
          ),
        ],
      ),
    );
  }
}
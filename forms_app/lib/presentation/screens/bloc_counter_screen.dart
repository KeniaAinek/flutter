import 'package:flutter/material.dart';

class BlocCounterScreen extends StatelessWidget {
  const BlocCounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloc Counter'),
        actions: [
          IconButton(
            onPressed: () => {}, 
            icon: const Icon( Icons.refresh_outlined )
          )
        ],
      ),
      body: Center(
        child: const Text('Conter Value: '),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: 1,
            child: const Text('+3'),
            onPressed: () => {}
          ),

          SizedBox(height: 10),

          FloatingActionButton(
            heroTag: 2,
            child: const Text('+2'),
            onPressed: () => {}
          ),

          SizedBox(height: 10),

          FloatingActionButton(
            heroTag: 3,
            child: const Text('+1'),
            onPressed: () => {}
          ),
        ],
      ),
    );
  }
}
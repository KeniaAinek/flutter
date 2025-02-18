import 'package:flutter/material.dart';


class CounterScreen extends StatefulWidget {


  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int clickCounter = 0;
  /* String title = 'Clicks'; */

  /* void updateTitle(){
    title = (clickCounter == 1) ? 'Click' : 'Clicks';
  } */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Counter Screen')),
      ),
        body: Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text( '$clickCounter', style: TextStyle( fontSize: 160, fontWeight: FontWeight.w100)),
            Text(/* title */'Click${ clickCounter == 1 ? '': 's'}', style: TextStyle( fontSize: 25 ),),
          ],
        ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
              clickCounter++;
            setState(() {});
            /* updateTitle(); */
          },
          child: const Icon( Icons.plus_one ),
        ),
      );
  }
}
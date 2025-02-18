import 'package:flutter/material.dart';


class CounterFunctionsScreen extends StatefulWidget {


  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clickCounter = 0;
  /* String title = 'Clicks'; */

  /* void updateTitle(){
    title = (clickCounter == 1) ? 'Click' : 'Clicks';
  } */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Counter Functions')),
        /* leading: IconButton(
        icon: Icon( Icons.refresh_rounded ), 
        onPressed: () { 

         },), */
        actions: [
          IconButton(
            icon:const Icon( Icons.refresh_rounded),
            onPressed: () {
              setState(() {
                clickCounter = 0;
              });
            },
          ),
        ],
      ),
        body: Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text( '$clickCounter', style: TextStyle( fontSize: 160, fontWeight: FontWeight.w100)),
            Text(/* title */'Click${ clickCounter == 1 ? '': 's'}', style: TextStyle( fontSize: 25 ),),
          ],
        ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButton( icon: Icons.refresh_outlined,
              onPressed: () {
                clickCounter = 0;
                setState(() {});
              },
            ),

             SizedBox(height: 10),

            CustomButton(icon: Icons.exposure_minus_1_outlined,
              onPressed: () {
                if(clickCounter == 0) return;
                clickCounter--;
                setState(() {});
              },),

            SizedBox(height: 10),

            CustomButton( icon: Icons.plus_one,
              onPressed: () {
                clickCounter++;
                setState(() {});
              },
             ),
          ],
        )
      );
  }
}

class CustomButton extends StatelessWidget {

  final IconData icon;
  final VoidCallback onPressed;

  const CustomButton({
    super.key, 
    required this.icon,
    required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const StadiumBorder(),
      backgroundColor: Colors.indigo.shade400,
      hoverColor: Colors.indigo,
      hoverElevation: 6,
      foregroundColor: Colors.white,
      onPressed: onPressed,
      child: Icon( icon ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';
  const SnackbarScreen({super.key});

  void showCustomSnackbar( BuildContext context ){
    ScaffoldMessenger.of(context).clearSnackBars();
    final snackbar = SnackBar(
      content: Text('Bonjour le monde'),
      action: SnackBarAction(label: 'Ok!', onPressed: (){}),
      duration: const Duration(seconds: 2),
      );
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialog( BuildContext context){
    showDialog(
      context: context, 
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: Text('Estás seguro?'),
        content: Text('Excepteur sunt dolor incididunt irure ipsum nisi nostrud consequat ea reprehenderit occaecat aliqua ut duis. Enim non excepteur commodo nisi ullamco proident Lorem est officia est officia magna irure. Magna veniam ex voluptate dolor consectetur amet labore do est. Sunt Lorem ipsum Lorem sunt cillum adipisicing non est tempor veniam duis. Aliqua est incididunt cillum exercitation eiusmod eu.'),
        actions: [
          TextButton(onPressed: () => context.pop(), child: Text('Cancelar')),
          FilledButton(onPressed: () => context.pop(), child: Text('Aceptar')),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snackbars y Diálogos'),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: (){
                showAboutDialog(
                  context: context,
                  children: [
                  Text('Qui duis occaecat fugiat ad voluptate enim mollit proident elit eiusmod anim tempor in proident. Nisi sint amet do dolore et amet sunt enim. Labore ea id Lorem culpa voluptate eu sint ea. Non incididunt cillum pariatur culpa aute aliquip minim amet do sint do. Cillum veniam do qui sit ipsum laborum veniam labore voluptate ipsum. Qui in officia voluptate voluptate irure cillum consectetur id eu amet veniam exercitation culpa. Exercitation ullamco sunt aliquip in laborum consequat.')
                  ]
                  ); 
            }, child: const Text('Licencias usadas')),

            FilledButton.tonal(
              onPressed: () => openDialog(context), 
              child: const Text('Mostrar Diálogo'))
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton.extended(
        label: Text('Mostrar Snackbar'),
        icon: Icon( Icons.remove_red_eye_outlined ),
        onPressed: () => showCustomSnackbar(context),
      ),
    );
  }
}
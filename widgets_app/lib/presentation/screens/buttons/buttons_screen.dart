import 'package:flutter/material.dart';

class ButtonsScreen extends StatelessWidget {

  static const name = 'buttons_screen';

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Buttons Screen')
        ),
        body: _ButtonsView(),
        floatingActionButton: FloatingActionButton(
          child: Icon( Icons.arrow_back_ios_new_rounded ),
          onPressed: () {

          },
        ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text('Elevated')),
            ElevatedButton(onPressed: null, child: const Text('Elevated Disable')),
            ElevatedButton.icon(
              onPressed: (){},
              icon: const Icon( Icons.access_alarm_rounded ),
              label: const Text('Elevated Icon'),
            ),

            FilledButton(onPressed: () {}, child: const Text('Filled')),
            FilledButton.icon(
              onPressed: () {}, 
              icon: const Icon( Icons.accessibility_new ),
              label: const Text('Filled Icon'),
              ),

            OutlinedButton(onPressed: (){}, child: Text('Outlined'),),
            OutlinedButton.icon(
              onPressed: (){},
              label: const Text('Outline Icon'),
              icon: const Icon( Icons.terminal ),
            ),

            TextButton(onPressed: (){}, child: const Text('Text')),
            TextButton.icon(
              onPressed: (){}, 
              icon: const Icon( Icons.account_box_outlined),
              label: const Text('Text Icon'),
              ),
            
            IconButton(onPressed: (){}, icon: const Icon( Icons.app_registration_rounded)),
            IconButton(
              onPressed: (){},
              icon: const Icon( Icons.app_registration_rounded ),
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(colors.primary),
                iconColor: WidgetStatePropertyAll(Colors.white),
              ),
            ),

            CustomButton(),

          ],
        ),
      ),
    );
  }
}


class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric( horizontal: 20, vertical: 10 ),
            child: Text('Hola mundo', style: TextStyle(color: Colors.white),),
            ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBottomNavigation extends StatelessWidget {

  final int currentIndex;

  const CustomBottomNavigation({
    super.key, 
    required this.currentIndex
  });

  /* int getCurrentIndex( BuildContext context ){
    final String location = GoRouterState.of(context).location;

    switch( location ){
      case '/':
        return 0;
      case '/categories':
        return 1;
      case '/favorites':
        return 2;
      default:
        return 0;
    }
  }

  void onItemTapped( BuildContext context, int index ){

    switch( index ){
      case 0:
        context.go('/');
      break;
      case 1:
        context.go('/');
      break;
      case 2:
        context.go('/favorites');
      break;
    }
  } */

 void onItemTapped( BuildContext context, int index ){
  switch( index ){
    case 0:
    context.go('/home/0');
    break;
    case 1:
    context.go('/home/1');
    break;
    case 2:
    context.go('/home/2');
    break;
  }
 }
 

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (value) => onItemTapped(context, value),
      elevation: 0,
      /* currentIndex: getCurrentIndex(context),
      onTap: (index) => onItemTapped(context, index), */
      items: const [
        BottomNavigationBarItem(
          icon: Icon( Icons.home_rounded ),
          label: 'Inicio',
        ),
        BottomNavigationBarItem(
          icon: Icon( Icons.label_rounded ),
          label: 'Categorias'
        ),
        BottomNavigationBarItem(
          icon: Icon( Icons.favorite_rounded ),
          label: 'Favoritos'
        ),
      ],
    );
  }
}
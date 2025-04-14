import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class FavoritesView extends ConsumerWidget {

  const FavoritesView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

   

    return Scaffold(
      body: ListView.builder( 
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Movie name'),
          );
        },
      ),
    );
  }
}

final favoriteMoviesProvider = FutureProvider((ref))
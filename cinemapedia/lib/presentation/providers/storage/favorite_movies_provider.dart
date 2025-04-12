import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/domain/repositories/local_storage_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/* final favoriteMoviesProvider = StateNotifierProvider((ref){

  return;
}); */


class StorageMoviesNotifier extends StateNotifier<Map<int, Movie>>{

  int page = 0;
  final LocalStorageRepository localStorageRepository;

  StorageMoviesNotifier({
    required this.localStorageRepository
  }): super({});

  Future<void> loadNextPage() async{
    final movies = await localStorageRepository.loadMovies(offset: page * 10);
    page++;

    state = {...state };
  }

}
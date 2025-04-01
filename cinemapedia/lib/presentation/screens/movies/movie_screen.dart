import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/presentation/providers/movies/movie_info_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MovieScreen extends ConsumerStatefulWidget {
  
  static const name = 'movie-screen';

  final String movieId;

  const MovieScreen({
    super.key, 
    required this.movieId
    });

  @override
  MovieScreenState createState() => MovieScreenState();
}

class MovieScreenState extends ConsumerState<MovieScreen> {

  @override
  void initState() {
    super.initState();
    
    ref.read(movieInfoProvider.notifier).loadMovie(widget.movieId);
  }

  @override
  Widget build(BuildContext context) {

    final Movie? movie = ref.watch( movieInfoProvider )[widget.movieId];

    if( movie == null ){
      return Scaffold(
        body: const Center ( 
          child: CircularProgressIndicator( strokeWidth: 2)
          )
        );
    }

    return Scaffold(
      body: CustomScrollView(
        physics: const ClampingScrollPhysics(),
        slivers: [
          _CustomSliverAppBar(
            movie: movie,
          ),
        ],
      ),
    );
  }
}

class _CustomSliverAppBar extends StatelessWidget {

  final Movie movie;

  const _CustomSliverAppBar({
    required this.movie
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.black,
      expandedHeight: MediaQuery.of(context).size.height * 0.7,
      foregroundColor: Colors.white,
      title: Text(movie.title),
    );
  }
}
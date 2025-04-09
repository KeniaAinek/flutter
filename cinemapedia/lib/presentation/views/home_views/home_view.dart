import 'package:cinemapedia/presentation/providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../widgets/widgets.dart';

class HomeView extends ConsumerStatefulWidget{
  const HomeView({ super.key });

  @override
  HomeViewState createState() => HomeViewState();
}

class HomeViewState extends ConsumerState<HomeView> {

  @override
  void initState() {
    super.initState();
    ref.read( nowPlayingMoviesProvider.notifier ).loadNextPage();
    ref.read( popularMoviesProvider.notifier ).loadNextPage();
    ref.read( topRatedMoviesProvider.notifier ).loadNextPage();
    ref.read( upcomingMoviesProvider.notifier ).loadNextPage();
  }

  @override
  Widget build(BuildContext context) {

    final initialLoading = ref.watch(initialLoadingProvider);
    if( initialLoading ) return const FullScreenLoader();

    final nowPlayingMovies = ref.watch( nowPlayingMoviesProvider );
    final moviesSlideShow = ref.watch( moviesSlideshowProvider );
    final popularMovies = ref.watch( popularMoviesProvider );
    final topRatedMovies = ref.watch( topRatedMoviesProvider );
    final upcomingMovies = ref.watch( upcomingMoviesProvider );

    

    return CustomScrollView(
      slivers:[
        const SliverAppBar(
          floating: true,
          flexibleSpace: FlexibleSpaceBar(
            title:  CustomAppbar(),
          ),
        ),
        SliverList(delegate: SliverChildBuilderDelegate(
          (context, index){
            return Column(
        children: [
      
          MoviesSlideshow( movies: moviesSlideShow ),
      
          MovieHorizontalListview(
            movies: nowPlayingMovies,
            title: 'En cines',
            subTitle: 'Lunes 20',
            loadNextPage: (){
              ref.read( nowPlayingMoviesProvider.notifier ).loadNextPage();          
            },
          ),
      
          MovieHorizontalListview(
            movies: nowPlayingMovies,
            title: 'Proximamente',
            subTitle: 'En este mes',
            loadNextPage: (){
              ref.read( nowPlayingMoviesProvider.notifier ).loadNextPage();          
            },
          ),
      
          MovieHorizontalListview(
            movies: popularMovies,
            title: 'Populares',
            // subTitle: 'Lunes 20',
            loadNextPage: (){
              ref.read( popularMoviesProvider.notifier ).loadNextPage();          
            },
          ),
      
          MovieHorizontalListview(
            movies: topRatedMovies,
            title: 'Mejor valoradas',
            subTitle: 'Desde siempre',
            loadNextPage: (){
              ref.read( topRatedMoviesProvider.notifier ).loadNextPage();          
            },
          ),

          MovieHorizontalListview(
            movies: upcomingMovies,
            title: 'Mejor valoradas',
            subTitle: 'Desde siempre',
            loadNextPage: (){
              ref.read( upcomingMoviesProvider.notifier ).loadNextPage();          
            },
          ),

          SizedBox(height: 10)
        
        ],
      );
          },
          childCount: 1,
        )
      ),
    ],
    );
  }
}
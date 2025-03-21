import 'package:cinemapedia/presentation/providers/providers.dart';
import 'package:cinemapedia/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends StatelessWidget {

  static const name = "home-screen";

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _HomeView(),
      bottomNavigationBar: CustomBottomNavigation(),
    );
  }
}

class _HomeView extends ConsumerStatefulWidget{
  const _HomeView();

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<_HomeView> {

  @override
  void initState() {
    super.initState();
    ref.read( nowPlayingMoviesProvider.notifier ).loadNextPage();
    ref.read( popularMoviesProvider.notifier ).loadNextPage();
  }

  @override
  Widget build(BuildContext context) {

    final nowPlayingMovies = ref.watch( nowPlayingMoviesProvider );
    final moviesSlideShow = ref.watch( moviesSlideshowProvider );

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
            movies: nowPlayingMovies,
            title: 'Populares',
            // subTitle: 'Lunes 20',
            loadNextPage: (){
              ref.read( nowPlayingMoviesProvider.notifier ).loadNextPage();          
            },
          ),
      
          MovieHorizontalListview(
            movies: nowPlayingMovies,
            title: 'Mejor valoradas',
            subTitle: 'Desde siempre',
            loadNextPage: (){
              ref.read( nowPlayingMoviesProvider.notifier ).loadNextPage();          
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
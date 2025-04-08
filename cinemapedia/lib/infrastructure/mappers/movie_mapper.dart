import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/infrastructure/models/moviedb/movie_details.dart';
import 'package:cinemapedia/infrastructure/models/moviedb/movie_moviedb.dart';

class MovieMapper {

  static Movie movieDBToEntity( MovieMovieDB moviedb ) => Movie(
    adult: moviedb.adult, 
    backdropPath: (moviedb.backdropPath != '') 
    ? 'https://image.tmdb.org/t/p/w500${ moviedb.backdropPath }'
    : 'https://img.freepik.com/vector-gratis/poster-error-404-pagina-no-encontrada-usar-sitio-web_1284-49337.jpg', 
    genreIds: moviedb.genreIds.map((e) => e.toString()).toList(), 
    id: moviedb.id, 
    originalLanguage: moviedb.originalLanguage, 
    originalTitle: moviedb.originalTitle, 
    overview: moviedb.overview, 
    popularity: moviedb.popularity, 
    posterPath: (moviedb.posterPath != '') 
    ? 'https://image.tmdb.org/t/p/w500${ moviedb.posterPath }'
    : 'https://lascrucesfilmfest.com/wp-content/uploads/2018/01/no-poster-available-737x1024.jpg', 
    releaseDate: moviedb.releaseDate != null ? moviedb.releaseDate! : DateTime.now(), 
    title: moviedb.title, 
    video: moviedb.video, 
    voteAverage: moviedb.voteAverage, 
    voteCount: moviedb.voteCount
    );

    static Movie movieDetailsToEntity( MovieDetails moviedb) => Movie(
      adult: moviedb.adult, 
    backdropPath: (moviedb.backdropPath != '') 
    ? 'https://image.tmdb.org/t/p/w500${ moviedb.backdropPath }'
    : 'https://panel.grouplancing.com/static/media/404.1798fa102fc489e7e1c0.jpg', 
    genreIds: moviedb.genres.map((e) => e.name ).toList(), 
    id: moviedb.id, 
    originalLanguage: moviedb.originalLanguage, 
    originalTitle: moviedb.originalTitle, 
    overview: moviedb.overview, 
    popularity: moviedb.popularity, 
    posterPath: (moviedb.posterPath != '') 
    ? 'https://image.tmdb.org/t/p/w500${ moviedb.posterPath }'
    : 'https://img.freepik.com/free-vector/404-error-with-landscape-concept-illustration_114360-7888.jpg', 
    releaseDate: moviedb.releaseDate, 
    title: moviedb.title, 
    video: moviedb.video, 
    voteAverage: moviedb.voteAverage, 
    voteCount: moviedb.voteCount
    );
  
}
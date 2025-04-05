

import 'package:cinemapedia/config/constants/environment.dart';
import 'package:cinemapedia/domain/datasources/actor_datasource.dart';
import 'package:cinemapedia/domain/entities/actor.dart';
import 'package:dio/dio.dart';

class ActorMoviedbDatasource extends ActorsDatasource {


  @override
  Future<List<Actor>> getActorsByMovie(String movieId) async{

    final dio = Dio( BaseOptions(
      baseUrl: 'https://api.themoviedb.org/3',
      queryParameters: {
        'api_key': Environment.theMovieDbKey,
        'language': 'es_MX'
      }
    ));

    List<Actor> actors = _jsonToActors(Map<String, dynamic> json){
      
    }

      return actors;
  }
}
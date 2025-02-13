void main(){
  
  print('Inicio del programa');
  
  httpGet('http://fernando-herrera.com/cursos').then( (value) {
    print( value );
  }).catchError( (err){
    print('Error: $err');
  });
  
  print('Final del programa');
}

Future<String> httpGet( String url ){
  
  return Future.delayed( const Duration(seconds: 1), () {
    throw 'Error en la peticion HTTP';
    
//     return 'Respuesta de la petición HTTP';
  });
}
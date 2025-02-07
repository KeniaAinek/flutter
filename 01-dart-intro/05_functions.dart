void main(){
  
  print(greetEveryone());
  print(greetEveryone1());
  print('Suma: ${ addTwoNumbers(10, 20)}');
  print('Suma: ${ addTwoNumbers1(10, 20)}');
  print(greetPerson(name:'Kenia', message: 'Hi,'));
}

 String greetEveryone(){
  return 'Hello everyone!';
}

String greetEveryone1() => 'Hello everyone!';

int addTwoNumbers( int a, int b){
  return a + b;
}

int addTwoNumbers1( int a, int b) => a + b;

int addTwoNumbersOptional( int a, [int b = 0]){
  
  //b = b ?? 0;
  //b ??= 0;
  
  return a + b;
}

String greetPerson({required String name,String message = 'Hola,'}){
  
  return '$message $name';
}

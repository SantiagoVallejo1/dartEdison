import 'dart:io';

void main(){

  print("Por favor ingrese una palabra: ");
  String palabra = stdin.readLineSync().toString();

  List<String> vocales = ["a", "e", "i", "o", "u"];
  List<int> conteoVocales = [0, 0, 0, 0, 0];

  for(String x in palabra.split("")){
    for(int i = 0; i < vocales.length; i++){
      if(x == vocales[i]){
        conteoVocales[i]++;
      }
    }
  }

  for(int i = 0; i < vocales.length; i++){
    print("${vocales[i]}: ${conteoVocales[i]}: ");
  }
}
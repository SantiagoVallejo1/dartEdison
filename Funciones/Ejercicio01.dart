// void main() {
//   var numeros = List.from([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);

//   numeros.forEach((x) {
//     var res = (x * x);
//     print("El cuadrado de: $x es igual a: $res");
//   });
// }

void main(){
  var numeros = List.from([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);

  for(int x in numeros){
    var resultado = (x * x);
    print("El cuadrado de: $x es igual a: $resultado");
  }
}
import "dart:io";
void main() {
    print("Digite las millas marinas");
    double millas = 
    double.parse(stdin.readLineSync().toString());

    var metros = millas * 1852;

    print("Las  $millas marinas  convertidas a metros  son $metros metros");
}
void main() {

  // Numbers

  int var1 = 10;
  double var2 = 1.8;
  var var3 = 10;
  var var4 = 1.8;
  num var5 = 7;
  num var6 = 2.4;

  // print(var1);
  // print(var2);
  // print(var2.ceil());
  // print(var2.floor());
  // print(var2.abs());

  // Strings

  String texto1 = 'El cálculo de la edad es ${6 + 4}';
  String texto2 = 'La suma es igual a ${var5 + var2}';
  String texto3 = 'Mi nombre es ' + 'Adrián';
  String texto4 = 'Mi apellido es ' 'Villamil';
  String texto5 = texto1 + texto3;
  String texto6 = 'El valor del texto 5 es: $texto5';
  String texto7 = '''CREATE TABLE table_name (
    Column1 dataype,
    Column2 datatype,
    Column3 datatype,
    ...
  )''';

  String texto8 = 'Texto con signos especiales \n esto es prueba';
  // String texto8 = r'Texto con signos especiales \n esto es prueba';

  // print(texto1);
  // print(texto2);
  // print(texto3);
  // print(texto4);
  // print(texto5);
  // print(texto6);
  // print(texto7);
  // print(texto8);

  // Listas

  var lista1 = ["mazda", "chevrolet", "kia"];
  var lista2 = ["mazda", "chevrolet", "kia", 234, true];
  List<String> lista3 = ["mazda", "chevrolet", "kia"];
  // print(lista1);
  lista1.clear();
  var lista4 = ["Manzana", ...lista2, ...lista3];
  var lista;
  var lista6 = ["uno", ...lista4, ...?lista];
  // print(lista1);
  // print(lista4);
  // print(lista4.reversed);
  // print(lista6);

  // Sets

  var set1 = {'mazda', 'chevrolet', 'kia'};
  set1.add('jeep');
  set1.add('mazda');
  // print(set1);

  // Maps

  var map1 = {'red': 'rojo', 'blue': 'azul'};
  print(map1);
  map1['green'] = 'verde';
  print(map1);

  // Null Safety

  List<String>? lista10 = null;
  List<String?> lista11 = ["uno", "dos", null];
}

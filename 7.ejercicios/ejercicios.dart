void main() {
  void ejercicio1() {
    // Crear una lista dinámica de 6 elementos, en la cual se recolectarán edades de personas.
    // Como resultado el programa mostrará la edad mayor, menor y el promedio de edades ingresados.

    var lista = [39, 18, 56, 42, 37, 15];
    int mayor = 0;
    int menor = lista[0];
    int suma = 0;
    double promedio;

    for (var element in lista) {
      if (element > mayor) {
        mayor = element;
      }
      if (element < menor) {
        menor = element;
      }
      suma = suma + element;
    }

    promedio = suma / lista.length;

    print('La edad mayor es $mayor');
    print('La edad menor es $menor');
    print('El promedio de las edades es $promedio');
  }

  void ejercicio2() {
    // Tome dos lista, por ejemplo:
    // a = [1,1,2,3,5,8,13,21,34,55,89]
    // b = [1,2,3,4,5,6,7,8,9,10,11,12,13]
    // y escriba un programa que devuelva una lista que contenga solos los elementos que son comunes entre ellos (sin duplicados).
    // Asegúrese de que su programa funcione en dos listas de diferentes tamaños.

    List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
    List<int> b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
    List<int> c = [];

    for (var element in a) {
      if (b.contains(element)) {
        if (!c.contains(element)) {
          c.add(element);
        }
      }
    }

    print(c);
  }

  //ejercicio1();
  ejercicio2();
}

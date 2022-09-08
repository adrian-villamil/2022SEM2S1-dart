void main() {
  ejercicio1();
  ejercicio2();
  ejercicio3('Yo hago yoga Hoy');
  ejercicio4();
  ejercicio5();
}

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

void ejercicio3(String palabra) {
  // Validar si una cadena es un palíndromo o no
  String auxiliar = palabra.split(' ').join('').toLowerCase();
  print(auxiliar == auxiliar.split('').reversed.join('') ? 'Si es palíndromo': 'No es palíndromo');
}

void ejercicio4() {
  // Por ejemplo tiene una lista guardada en una variable:
  // a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100].
  // Escriba un código de Dart que tome esta lista y cree una nueva lista que contenga
  // solo los elementos pares de esta lista.
  List <int> a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
  print(a.where((numero) => numero % 2 == 0));
}

void ejercicio5() {
  // Realizar un programa que implemente herencia y mixin del siguiente
  // diagrama. Los resultados por consola deben evidenciar el uso de extend y
  // mixin.
  // Cada clase debe tener mínimo un método y tres atributos.
  
  Persona persona1 = Persona('Adrian', 'Villamil', 27);
  Artista artista1 = Artista('impresionismo', 'pintor', 10);
  Ingeniero ingeniero1 = Ingeniero('ingenieria electrica y mecanica', 'Continental Edison Company', 45);
  Doctor doctor1 = Doctor('neurocirujano', 'Seattle Grace', 'Seattle');
  Boxeador boxeador1 = Boxeador(50, 44, 6, 'Mike', 'Tyson', 56, 'boxeador', 'Estados Unidos', 'Iron Mike');
  
  print('${persona1.imprimir()}\n');
  print('${artista1.imprimirArtista()}\n${artista1.dibujar()}\n');
  print('${ingeniero1.imprimirIngeniero()}\n${ingeniero1.dibujar()}\n${ingeniero1.leer()}\n');
  print('${doctor1.imprimirDoctor()}\n${doctor1.leer()}\n${doctor1.ejercitarse()}\n');
  print('${boxeador1.imprimirBoxeador()}\n${boxeador1.ejercitarse()}\n${boxeador1.boxear()}\n');
}

class Persona {
  String nombre;
  String apellido;
  int edad;
  
  Persona(this.nombre, this.apellido, this.edad);
  
  String imprimir() {
    return 'Mi nombre es $nombre $apellido y tengo $edad años.';
  }
}

class Artista extends Persona with Dibujar {
  String estilo;
  String vocacion;
  int experiencia;
  
  Artista(this.estilo, this.vocacion, this.experiencia): super('Vincent', 'Van Gogh', 37);
  
  String imprimirArtista() {
    return '${imprimir()}\nSoy $vocacion por $experiencia años y mi estilo es el $estilo.';
  }
}

class Ingeniero extends Persona with Dibujar, Leer {
  String area;
  String empresa;
  int experiencia;
  
  Ingeniero(this.area, this.empresa, this.experiencia): super('Nikola', 'Tesla', 86);
  
  String imprimirIngeniero() {
    return '${imprimir()}\nSoy un ingeniero en $area por $experiencia años y trabajo en $empresa.';
  }
}

class Doctor extends Persona with Leer, Ejercitarse {
  String ocupacion;
  String hospital;
  String residencia;
  
  Doctor(this.ocupacion, this.hospital, this.residencia): super('Derek', 'Shepherd', 49);
  
  String imprimirDoctor() {
    return '${imprimir()}\nSoy $ocupacion en el hospital $hospital de $residencia';
  }
}

class Atleta extends Persona {
  String deporte;
  String nacionalidad;
  String apodo;
  
  Atleta(this.deporte, this.nacionalidad, this.apodo, String nombre, String apellido, int edad): super(nombre, apellido, edad);
  
  String imprimirAtleta() {
    return '${imprimir()}\nSoy un $deporte de $nacionalidad y me apodan $apodo.';
  }
}

class Boxeador extends Atleta with Ejercitarse, Boxear {
  int victorias;
  int kos;
  int derrotas;
  
  Boxeador(this.victorias, this.kos, this.derrotas, String nombre, String apellido, int edad, String deporte, String nacionalidad, String apodo): super(deporte, nacionalidad, apodo, nombre, apellido, edad);
  
  String imprimirBoxeador() {
    return '${imprimirAtleta()}\nGane $victorias peleas, $kos de ellas por KO y perdi $derrotas peleas.';
  }
}

mixin Dibujar {
  String? papel;
  String? utensilios;
  int? dedicacion;
  
  String dibujar() {
    return 'Estoy dibujando.';
  }
}

mixin Leer {
  String? libro;
  String? autor;
  int? dedicacion;
  
  String leer() {
    return 'Estoy leyendo.';
  }
}

mixin Ejercitarse {
  String? dias;
  String? horario;
  int? dedicacion;
  
  String ejercitarse() {
    return 'Estoy haciendo ejercicio.';
  }
}

mixin Boxear {
  String? oponente;
  String? fecha;
  String? hora;
  
  String boxear() {
    return 'Estoy boxeando.';
  }
}
void main() {
  Persona persona1 = Persona(nombre: 'Adrian', apellido: 'Villamil', edad: 27);

  Padre padre1 = Padre(2);
  print(padre1.apellido);
  
  var taxi1 = Taxi();
  taxi1.placa = '123';
  print(taxi1.placa);
  print(taxi1.tipoVehiculo());

  if (taxi1 is Taxi) {
    print('Si es de tipo taxi.');
  } else {
    print('No es de tipo taxi.');
  }
}

class Persona {
  String nombre;
  String? apellido;
  int? edad;

  Persona({required this.nombre, required this.apellido, required this.edad });
  Persona.completo(this.nombre);
}

class Padre extends Persona {
  int hijos;

  // Padre(this.hijos): super(nombre: 'Adrian', apellido: 'Villamil', edad: 27);
  Padre(this.hijos): super.completo('adrian');
}

abstract class Vehiculo {
  late String placa;

  bool vehiculoEncendido();
}

class Taxi extends Vehiculo with Terrestre, Acuatico {
  @override
  bool vehiculoEncendido() {
    return true;
  }
}

mixin Terrestre {
  int? llantas;
  int? kilometraje;

  tipoVehiculo() {
    return 'Terrestre';
  }
}

mixin Acuatico {
  int? motores;

  tipoVehiculo() {
    return 'Acuático';
  }
}
void main() {
  try {
    String elNombre = obtenerNombre('felipe');
    print(elNombre);
  } on FormatException catch (e) {
    print('Se present{o una excepci{on FormatException');
  } on Exception catch (e) {
    print('Se present{o una excepción Exception');
  } catch (e) {
    print('Se present{o una excepción');
  } finally {
    print('Este es el finally');
  }
}

String obtenerNombre(String nombre) {
  if (nombre == 'adrian') {
    throw FormatException('Este nombre no está permitido');
  }
  if (nombre == 'felipe') {
    throw Exception('Este nombre no está permitido');
  }
  return 'Mi nombre es $nombre';
}
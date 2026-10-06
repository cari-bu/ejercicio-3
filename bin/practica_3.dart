import 'dart:io';

void main() {
  // ==========================================
  // EJERCICIO 1: Registro y promedio de notas
  // ==========================================
  print('--- EJERCICIO 1: REGISTRO DE NOTAS ---');
  
  double sumaNotas = 0;
  
  for (int i = 1; i <= 5; i++) {
    stdout.write('Ingrese la nota de la evaluación $i: ');
    String? entrada = stdin.readLineSync();
    
    // Validamos la entrada del usuario
    double? nota = double.tryParse(entrada ?? '');
    if (nota != null) {
      sumaNotas += nota;
    } else {
      print('Entrada inválida. Se registrará 0 para esta evaluación.');
    }
  }
  
  double promedio = sumaNotas / 5;
  
  print('\n=== RESULTADOS ===');
  print('Suma total de las notas: ${sumaNotas.toStringAsFixed(2)}');
  print('Promedio final: ${promedio.toStringAsFixed(2)}');
  
  if (promedio >= 13) {
    print('Estado: APROBADO');
  } else {
    print('Estado: DESAPROBADO');
  }
  
  print('iestph\n'); 


  // ==========================================
  // EJERCICIO 2: Cajero automático
  // ==========================================
  print('--- EJERCICIO 2: CAJERO AUTOMÁTICO ---');
  
  double saldo = 500.0;
  int opcion = 0;
  
  while (opcion != 4) {
    print('===== CAJERO AUTOMÁTICO =====');
    print('1. Consultar saldo');
    print('2. Retirar dinero');
    print('3. Depositar dinero');
    print('4. Salir');
    stdout.write('Seleccione una opción: ');
    
    String? entradaOpcion = stdin.readLineSync();
    opcion = int.tryParse(entradaOpcion ?? '') ?? 0;
    
    switch (opcion) {
      case 1:
        print('\n-> Su saldo actual es: S/ ${saldo.toStringAsFixed(2)}\n');
        break;
        
      case 2:
        stdout.write('\n¿Cuánto dinero desea retirar?: S/ ');
        String? entradaRetiro = stdin.readLineSync();
        double retiro = double.tryParse(entradaRetiro ?? '') ?? 0;
        
        if (retiro <= 0) {
          print('Monto inválido.\n');
        } else if (retiro > saldo) {
          print('Fondos insuficientes. Su saldo es menor al monto solicitado.\n');
        } else {
          saldo -= retiro;
          print('Retiro exitoso. Retire su dinero.\n');
        }
        break;
        
      case 3:
        stdout.write('\n¿Cuánto dinero desea depositar?: S/ ');
        String? entradaDeposito = stdin.readLineSync();
        double deposito = double.tryParse(entradaDeposito ?? '') ?? 0;
        
        if (deposito <= 0) {
          print('Monto inválido.\n');
        } else {
          saldo += deposito;
          print('Depósito exitoso.\n');
        }
        break;
        
      case 4:
        print('\nGracias por usar el cajero automático. ¡Hasta luego!');
        break;
        
      default:
        print('\nOpción no válida. Intente nuevamente.\n');
    }
  }
  

  print('--- EJERCICIO 3: ADIVINA EL NÚMERO ---');
  
  const int numeroSecreto = 37;
  int numeroIngresado = 0;
  int intentos = 0;
  
  do {
    stdout.write('Ingresa un número: ');
    String? entrada = stdin.readLineSync();
    numeroIngresado = int.tryParse(entrada ?? '') ?? 0;
    
    intentos++;
    
    if (numeroIngresado < numeroSecreto) {
      print('El número secreto es mayor.\n');
    } else if (numeroIngresado > numeroSecreto) {
      print('El número secreto es menor.\n');
    } else {
      print('¡Correcto!\n');
    }
    
  } while (numeroIngresado != numeroSecreto);
  
  print('=== RESUMEN ===');
  print('Cantidad de intentos utilizados: $intentos');
  
  print('iestph\n'); 

  print('--- EJERCICIO 4: GESTIÓN DE PRODUCTOS ---');
  
  List<String> productos = [
    "Laptop",
    "Mouse",
    "Teclado",
    "Monitor",
    "Impresora"
  ];
  
  
  print('Lista inicial de productos:');
  for (int i = 0; i < productos.length; i++) {
    print('- ${productos[i]}');
  }
  
 
  stdout.write('\nIngrese el nombre de un nuevo producto: ');
  String? nuevoProducto = stdin.readLineSync();
  
 
  if (nuevoProducto != null && nuevoProducto.trim().isNotEmpty) {
    productos.add(nuevoProducto.trim());
    print('¡Producto agregado con éxito!');
  } 
  else 
  {
    print('Entrada inválida. No se agregó ningún producto.');
  }
  
  print('\nLista actualizada de productos:');
  for (int i = 0; i < productos.length; i++) {
    print('- ${productos[i]}');
  }
  
  // cantidad total de productos 
  print('\nCantidad total de productos: ${productos.length}');
  
  print('iestph'); 
}

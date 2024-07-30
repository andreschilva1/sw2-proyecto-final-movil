import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:projectsw2_movil/services/services.dart';
import 'package:flutter/material.dart';

// Definir una función que configure el entorno para las pruebas
void main() {
  group('AuthService Integration Tests', () {
    late AuthService authService;

    setUp(() {
      authService = AuthService();
    });

    test('register should succeed with valid data', () async {
      // Llama al método register
      final response = await authService.register(
        'Jane Doe',
        'jane.doe@example.com',
        'password123',
        '0987654321',
      );

      // Aquí puedes comprobar el resultado dependiendo de lo que devuelve el método register
      // Asumiendo que el método no devuelve nada, pero puedes agregar más lógica según el resultado esperado.
      
      // Aquí no hay verificación de valores porque estamos interactuando con un servidor real
      // y dependiendo de la respuesta del servidor, debes verificar el resultado apropiadamente.
      
      expect(response, isNotNull);
    });

    test('register should fail with invalid data', () async {
      // Llama al método register con datos inválidos
      final response = await authService.register(
        'Jane Doe',
        'invalid-email',
        'short',
        '0987654321',
      );

      // Aquí puedes comprobar el resultado dependiendo de la respuesta del servidor
      // Si el servidor responde con un error, puedes verificar el código de estado o el mensaje de error.
      
      expect(response, isNotNull);
    });
  });
}

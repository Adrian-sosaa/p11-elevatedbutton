import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Botones Elevados'),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Texto adicional debajo del título
                const Text(
                  'JAN ADRIAN SOSA CORDERO 22308051281317',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                    height: 20), // Espacio entre el texto y los botones
                _buildElevatedButton('Botón Elevado 1'),
                const SizedBox(height: 10),
                _buildElevatedButtonWithColor(
                    'Botón Elevado 2 (Verde)', Colors.green),
                const SizedBox(height: 10),
                _buildElevatedButtonWithColor(
                    'Botón Elevado 3 (Verde Claro)', Colors.lightGreen),
                const SizedBox(height: 10),
                _buildOutlinedButton('Botón Elevado 4 (Contorno)'),
                const SizedBox(height: 20),
                _buildIconButton(Icons.add, 'Añadir'),
                const SizedBox(height: 10),
                _buildIconButtonWithColor(Icons.edit, 'Editar', Colors.blue),
                const SizedBox(height: 10),
                _buildIconButtonWithColor(Icons.delete, 'Borrar', Colors.red),
                const SizedBox(height: 10),
                _buildIconButtonWithColor(Icons.save, 'Guardar', Colors.orange),
                const SizedBox(height: 20),
                _buildElevatedButtonWithColor(
                    'Botón Elevado 5 (Morado)', Colors.purple),
                const SizedBox(height: 10),
                _buildElevatedButtonWithColor(
                    'Botón Elevado 6 (Cyan)', Colors.cyan),
                const SizedBox(height: 10),
                _buildElevatedButtonWithColor(
                    'Botón Elevado 7 (Marrón)', Colors.brown),
                const SizedBox(height: 10),
                _buildElevatedButtonWithColor(
                    'Botón Elevado 8 (Rosa)', Colors.pink),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Método para construir un botón elevado básico
  Widget _buildElevatedButton(String text) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(text),
    );
  }

  // Método para construir un botón elevado con color personalizado
  Widget _buildElevatedButtonWithColor(String text, Color color) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(backgroundColor: color),
      child: Text(text),
    );
  }

  // Método para construir un botón con borde
  Widget _buildOutlinedButton(String text) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: Colors.grey,
        side: const BorderSide(color: Colors.grey),
      ),
      child: Text(text),
    );
  }

  // Método para construir un botón con ícono
  Widget _buildIconButton(IconData icon, String label) {
    return ElevatedButton.icon(
      onPressed: () {},
      icon: Icon(icon),
      label: Text(label),
    );
  }

  // Método para construir un botón con ícono y color personalizado
  Widget _buildIconButtonWithColor(IconData icon, String label, Color color) {
    return ElevatedButton.icon(
      onPressed: () {},
      icon: Icon(icon),
      label: Text(label),
      style: ElevatedButton.styleFrom(backgroundColor: color),
    );
  }
}

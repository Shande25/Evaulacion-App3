import 'package:evaulacion/Navegacion/Drawer.dart';
import 'package:flutter/material.dart';

class Ejercicio02 extends StatelessWidget {
  const Ejercicio02({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Cuerpo(),
    );
  }
}

class Cuerpo extends StatelessWidget {
  const Cuerpo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Calculo de Distancia")),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.network(
              "https://static.diarioconvos.com/uploads/2023/04/bc41b94f47d4fb9c1e8e6348eecced79.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Column(
            children: [
              velocidad_input(),
              calcular_btn(context),
            ],
          ),
        ],
      ),
      drawer: MyDrawer(),
    );
  }
}

TextEditingController velocidad = new TextEditingController();

Widget velocidad_input() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextField(
      controller: velocidad,
      decoration: InputDecoration(
        labelText: "Velocidad ",
        labelStyle: TextStyle(color: Colors.white),
        border: OutlineInputBorder(),
      ),
      keyboardType: TextInputType.number,
    ),
  );
}

Widget calcular_btn(BuildContext context) {
  return ElevatedButton.icon(
    onPressed: () => calcular(context),
    label: const Text("Calcular Distancia"),
    icon: const Icon(Icons.calculate),
  );
}

void calcular(BuildContext context) {
  double velocidadV = double.parse(velocidad.text);
  double tiempo = 100;
  double distancia = velocidadV * tiempo;

  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: const Text("Resultado"),
        content: Text(
            "La distancia recorrida a ${velocidad.text} m/s en 100 segundos es: ${distancia} metros"),
      );
    },
  );
}
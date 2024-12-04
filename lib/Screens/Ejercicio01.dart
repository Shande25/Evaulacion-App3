import 'package:evaulacion/Navegacion/Drawer.dart';
import 'package:flutter/material.dart';

class Ejercicio01 extends StatelessWidget {
  const Ejercicio01({super.key});

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
      appBar: AppBar(title: const Text("Calculo del IMC")),
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
              altura_input(),
              peso_input(),
              calcular_btn(context),
            ],
          ),
        ],
      ),
      drawer: MyDrawer(),
    );
  }
}

TextEditingController altura = new TextEditingController();
TextEditingController peso = new TextEditingController();

Widget altura_input() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextField(
      controller: altura,
      decoration: const InputDecoration(
        labelText: "Altura",
        labelStyle: TextStyle(color: Colors.white),
        border: OutlineInputBorder(),
      ),
    ),
  );
}

Widget peso_input() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextField(
      controller: peso,
      decoration: const InputDecoration(
        labelText: "Peso",
        labelStyle: TextStyle(color: Colors.white),
        border: OutlineInputBorder(),
      ),
      keyboardType: TextInputType.number,
    ),
  );
}

Widget calcular_btn(BuildContext context) {
  return ElevatedButton.icon(
    onPressed: () => calcularIMC(context),
    label: const Text("Calcular IMC"),
    icon: const Icon(Icons.calculate),
  );
}

void calcularIMC(BuildContext context) {
  double alturaV = double.parse(altura.text);
  double pesoV = double.parse(peso.text);

  if (alturaV > 0 && pesoV > 0) {
    double imc = pesoV / (alturaV * alturaV);
    String resultado = "";
    if (imc < 18.5) {
      resultado = "Bajo peso";
    } else if (imc >= 18.5 && imc <= 24.9) {
      resultado = "Peso normal";
    } else if (imc >= 25.0 && imc <= 29.9) {
      resultado = "Sobrepeso";
    } else {
      resultado = "Obesidad";
    }

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Resultado del IMC"),
          content: Text("Tu IMC es ${imc}. Categoría: ${resultado}"),
        );
      },
    );
  }
}
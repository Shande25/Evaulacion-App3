import 'package:evaulacion/Navegacion/Drawer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Evaulacion());
}

class Evaulacion extends StatelessWidget {
  const Evaulacion({super.key});

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
      appBar: AppBar(
        title: Text("Pantalla1", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.cyan.shade600,
      ),
      drawer: MyDrawer(),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.network(
              "https://static.diarioconvos.com/uploads/2023/04/bc41b94f47d4fb9c1e8e6348eecced79.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Evaulacion",
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 32),
                StudentInfo(),
                imageLocal(),
                imageuUrl(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class StudentInfo extends StatelessWidget {
  const StudentInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
          ),
        ],
      ),
      child: Column(
        children: [
          Text(
            'Nombre del estudiante:',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text(
            'Jahir Paredes',
            style: TextStyle(fontSize: 24, color: const Color.fromARGB(255, 148, 0, 193)),
          ),
          SizedBox(height: 16),
          Text(
            'Usuario de GitHub:',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text(
            'Shande25',
            style: TextStyle(fontSize: 24, color: const Color.fromARGB(255, 148, 0, 193)),
          ),
        ],
      ),
    );
  }
}

Widget imageLocal() {
  return Image.asset(
    "assets/images/Pxfuel.jpg",
    height: 100,
    width: 100,
  );
}

Widget imageuUrl() {
  return Image.network(
    "https://marketing4ecommerce.net/wp-content/uploads/2024/02/ias-generadoras-de-imagenes.jpg",
    height: 100,
    width: 100,
  );
}

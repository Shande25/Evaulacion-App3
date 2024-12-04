
import 'package:evaulacion/Screens/Ejercicio01.dart';
import 'package:evaulacion/Screens/Ejercicio02.dart';
import 'package:evaulacion/main.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Drawer(
      child: ListView(
        children: [
          ListTile(
            title: Text("Inicio"),
             onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>Evaulacion())),
            ),
          ListTile(
            title: Text("Ejercicio1"),
             onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> Ejercicio01())),),
            ListTile(
            title: Text("Ejercicio2"),
             onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> Ejercicio02())),
            )
        ],
      ),
    );
  }
}
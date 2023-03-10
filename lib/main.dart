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
      title: 'Mi App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(
        title: 'App',
        nombre: 'Daniel RoMo Dev',
        edad: "22 años",
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  final String nombre;
  final String edad;
  const MyHomePage(
      {super.key,
      required this.title,
      required this.nombre,
      required this.edad});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String mensaje = 'ESTA ES MI PRIMER APP SOLO EN FLUTTER';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(209, 94, 221, 111),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(widget.nombre),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  Text("Hola: $mensaje");
                });
              },
              child: const Text("OPRIMA PARA VER EL MSM"),
            ),
          ],
        ),
      ),
    );
  }
}
//Version 1.0
//By Daniel RoMo Dev

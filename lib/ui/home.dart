import 'package:carrito_compras/controlador/controladorGeneral.dart';
import 'package:carrito_compras/ui/menu.dart';
import 'package:carrito_compras/ui/pag1Inicio.dart';
import 'package:carrito_compras/ui/pag2Comprar.dart';
import 'package:carrito_compras/ui/pag3Productos.dart';
import 'package:carrito_compras/ui/pag4Nosotros.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Reto 2',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Carrito de compras'),
      debugShowCheckedModeBanner: false,
    );
  }
}

List paginas = [pag1Inicio(), pag2Comprar(), pag3Productos(), pag4Nosotros()];

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  controladorGeneral Control = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: menu(),
      body: Obx(() => paginas[Control.posicionPagina]),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

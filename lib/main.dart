import 'package:carrito_compras/controlador/controladorGeneral.dart';
import 'package:carrito_compras/ui/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  Get.put(controladorGeneral());
  runApp(const MyApp());
}

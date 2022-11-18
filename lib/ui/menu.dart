import 'package:carrito_compras/controlador/controladorGeneral.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class menu extends StatefulWidget {
  const menu({super.key});

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {
  controladorGeneral Control = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.purpleAccent),
              child: UserAccountsDrawerHeader(
                  currentAccountPicture: CircleAvatar(
                    backgroundImage:
                        NetworkImage("https://i.imgur.com/ZZNIs.jpeg"),
                  ),
                  accountName: Text("Deissy Durán"),
                  accountEmail: Text("d.vivianaduran.r@gmail.com")),
            ),
            Divider(),
            Expanded(
                child: ListView(
              children: [
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Inicio"),
                  trailing: Icon(Icons.arrow_right),
                  onTap: () {
                    Navigator.pop(context);
                    Control.cambiarPosicion(0);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.monetization_on),
                  title: Text("Comprar"),
                  trailing: Icon(Icons.arrow_right),
                  onTap: () {
                    Navigator.pop(context);
                    Control.cambiarPosicion(1);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.shopify),
                  title: Text("Mis productos"),
                  trailing: Icon(Icons.arrow_right),
                  onTap: () {
                    Navigator.pop(context);
                    Control.cambiarPosicion(2);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Sobre nosotros"),
                  trailing: Icon(Icons.arrow_right),
                  onTap: () {
                    Navigator.pop(context);
                    Control.cambiarPosicion(3);
                  },
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}

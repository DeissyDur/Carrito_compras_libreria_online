import 'package:flutter/material.dart';

class pag4Nosotros extends StatefulWidget {
  const pag4Nosotros({super.key});

  @override
  State<pag4Nosotros> createState() => _pag4NosotrosState();
}

class _pag4NosotrosState extends State<pag4Nosotros> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.laptop_chromebook),
            title: Text("Jeckson Sampayo Mendoza"),
            subtitle: Text("Desarrollador"),
          ),
          ListTile(
            leading: Icon(Icons.laptop_mac),
            title: Text("Deissy Viviana Durán Rodríguez"),
            subtitle: Text("Desarrolladora"),
          )
        ],
      ),
    );
  }
}

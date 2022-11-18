import 'package:carrito_compras/controlador/controladorGeneral.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class pag3Productos extends StatefulWidget {
  const pag3Productos({super.key});

  @override
  State<pag3Productos> createState() => _pag3ProductosState();
}

class _pag3ProductosState extends State<pag3Productos> {
  controladorGeneral Control = Get.find();
  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: Control.pro.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Control.pro[index].cantidad == 0
                        ? Text("")
                        : ListTile(
                            leading: Image(
                                image: NetworkImage(Control.pro[index].imagen)),
                            title: Text(Control.pro[index].nombre),
                            subtitle: Text("Precio: " +
                                Control.pro[index].precio.toString() +
                                " | Cantidad: " +
                                Control.pro[index].cantidad.toString()),
                            trailing: Text((Control.pro[index].cantidad *
                                    Control.pro[index].precio)
                                .toString()),
                          );
                  },
                ),
              ),
              Divider(),
              Text(
                "Total a pagar: " + Control.calcularTotal().toString(),
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Divider(),
              ElevatedButton.icon(
                  onPressed: () {
                    Alert(
                        context: context,
                        title: "Atención!",
                        desc: "Compra realizada satisfactoriamente",
                        buttons: [
                          DialogButton(
                              child: Text("Cerrar"),
                              onPressed: () {
                                Control.limpiarTodo();
                                Navigator.pop(context);
                                Control.cambiarPosicion(0);
                              })
                        ]).show();
                  },
                  icon: Icon(Icons.save),
                  label: Text("Comprar"))
            ],
          ),
        ));
  }
}

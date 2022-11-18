import 'package:carrito_compras/clases/productos.dart';
import 'package:get/get.dart';

class controladorGeneral extends GetxController {
  final _posicionPagina = 0.obs;
  final pro = <productos>[].obs;

  @override
  void onInit() {
    pro.add(productos(
        1,
        "Rayuela",
        "Julio Cortazar",
        "https://images.cdn3.buscalibre.com/fit-in/360x360/c8/25/c8254b8aca6fc23f8da1d5dec8fc6aee.jpg",
        0,
        75000));
    pro.add(productos(
        2,
        "Amuleto",
        "Roberto Bolaño",
        "https://images.cdn1.buscalibre.com/fit-in/360x360/74/0e/740e0e0dd5350ab62ea98a11f99d8785.jpg",
        0,
        65000));
    pro.add(productos(
        3,
        "Angelitos empantanados",
        "Andrés Caicedo",
        "https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1394227627l/21400158.jpg",
        0,
        50000));
    pro.add(productos(
        4,
        "Opio en las nubes",
        "Rafael Chaparro Madiedo",
        "https://d3ugyf2ht6aenh.cloudfront.net/stores/263/987/products/captura-de-pantalla-2020-12-26-a-las-11-39-45-a-m1-ae9d19e7ef560ef69416090008658038-640-0.png",
        0,
        40000));
    // TODO: implement onInit
    super.onInit();
  }

  void cambiarPosicion(int x) {
    _posicionPagina.value = x;
  }

  int get posicionPagina => _posicionPagina.value;

  void cambiarCantidad(int posicion, int valor) {
    print("posicion " + posicion.toString() + " | valor = " + valor.toString());
    pro[posicion].cantidad = valor;
  }

  int calcularTotal() {
    int total = 0;
    for (int i = 0; i < pro.length; i++) {
      total = total + pro[i].cantidad * pro[i].precio;
    }

    return total;
  }

  void limpiarTodo() {
    for (int i = 0; i < pro.length; i++) {
      pro[i].cantidad = 0;
    }
    calcularTotal();
  }
}

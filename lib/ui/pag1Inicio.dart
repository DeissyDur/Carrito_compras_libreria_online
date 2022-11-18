import 'package:flutter/material.dart';

class pag1Inicio extends StatefulWidget {
  const pag1Inicio({super.key});

  @override
  State<pag1Inicio> createState() => _pag1InicioState();
}

class _pag1InicioState extends State<pag1Inicio> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Image(
            image: NetworkImage(
                "https://previews.123rf.com/images/korara/korara1604/korara160400312/54644041-plantilla-de-librer%C3%ADa-o-biblioteca-de-vector-logo-en-el-estilo-de-l%C3%ADnea-delgada-de-la-vendimia.jpg")),
      ),
    );
  }
}

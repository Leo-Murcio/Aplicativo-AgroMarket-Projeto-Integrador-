import 'package:flutter/material.dart';
import 'package:aplicativo/cores/principais_cores.dart';
import 'package:aplicativo/modelos/produtos.dart';

class FotosProduto extends StatelessWidget {
  final Produtos produtos;

  FotosProduto(this.produtos);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        height: 251,
        child: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                      color: kBackground,
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                margin: EdgeInsets.all(12),
                width: 250,
                height: 250,
                decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    offset: Offset(-1, 10),
                    blurRadius: 10,
                  )
                ]),
                child: Image.asset(
                  produtos.fotos,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
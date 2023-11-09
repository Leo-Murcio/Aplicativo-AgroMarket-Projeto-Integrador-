import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:aplicativo/cores/principais_cores.dart';
import 'package:aplicativo/modelos/produtos.dart';

class ProdutoItem extends StatelessWidget {
  final Produtos produtos;

  ProdutoItem(this.produtos);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(5),
            width: 110,
            height: 110,
            child: Image.asset(produtos.fotos, fit: BoxFit.fitHeight),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(
                top: 20,
                left: 10,
                right: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        produtos.nome,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          height: 1.5,
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios_outlined, size: 15)
                    ],
                  ),
                  Text(
                    produtos.desc,
                    style: TextStyle(
                        color: produtos.highLight
                            ? kPrimaryColor
                            : Colors.grey.withOpacity(0.8),
                        height: 1.5),
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Text(
                        '\$',
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '${produtos.preco}',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
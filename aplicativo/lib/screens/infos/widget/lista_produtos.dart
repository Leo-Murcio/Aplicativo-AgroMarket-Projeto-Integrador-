import 'package:aplicativo/screens/infos/widget/itens_produtos.dart';
import 'package:flutter/material.dart';
import 'package:aplicativo/cores/principais_cores.dart';
import 'package:aplicativo/modelos/app_layout.dart';

class ProdutoItem extends StatelessWidget {
  final int selected;
  final Function callback;
  final AgroMarket agro_Market;

  ProdutoItem(this.selected, this.callback, this.agro_Market);

  @override
  Widget build(BuildContext context) {
    final category = agro_Market.catalogo.keys.toList();

    return Container(
      height: 100,
      padding: EdgeInsets.symmetric(vertical: 30),
      child: ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: 25),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
                onTap: () => callback(index),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: selected == index ? kPrimaryColor : Colors.white,
                  ),
                  child: Text(
                    category[index],
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
          separatorBuilder: (_, index) => SizedBox(width: 20),
          itemCount: category.length),
    );
  }
}
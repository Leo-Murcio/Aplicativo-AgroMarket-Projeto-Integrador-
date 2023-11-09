import 'package:flutter/material.dart';
import 'package:aplicativo/modelos/app_layout.dart';
import 'package:aplicativo/screens/detalhes/detalhes.dart';
import 'package:aplicativo/screens/infos/widget/itens_produtos.dart';

class ListViewProdutos extends StatelessWidget {
  final int selected;
  final Function callback;
  final PageController pageController;
  final AgroMarket agroMarket;

  ListViewProdutos(
      this.selected, this.callback, this.pageController, this.agroMarket);

  @override
  Widget build(BuildContext context) {
    final category = agroMarket.catalogo.keys.toList();

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: PageView(
        controller: pageController,
        onPageChanged: (index) => callback(index),
        children: category
            .map((e) => ListView.separated(
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) => GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => DetalhesApp(
                              agroMarket.catalogo[category[selected]]![index]),
                        ));
                      },
                      child:
                          ProdutoItem(agroMarket.catalogo[category[selected]]![index]),
                    ),
                separatorBuilder: (_, index) => SizedBox(height: 15),
                itemCount: agroMarket.catalogo[category[selected]]!.length))
            .toList(),
      ),
    );
  }
}
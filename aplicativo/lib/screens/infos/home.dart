import 'package:flutter/material.dart';
import 'package:aplicativo/cores/principais_cores.dart';
import 'package:aplicativo/modelos/app_layout.dart';
import 'package:aplicativo/screens/infos/widget/list_view_produtos.dart';
import 'package:aplicativo/screens/infos/widget/lista_produtos.dart';
import 'package:aplicativo/screens/infos/widget/info_app.dart';
import 'package:aplicativo/widgets/custom_app_bar.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var selected = 0;
  final pageController = PageController();
  final agromarket = AgroMarket.generateAgroMarket();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(
            Icons.arrow_back_ios_outlined,
            Icons.search_outlined,
          ),
          AgroMarketInfo(),
          ProdutoItem(selected, (int index) {
            setState(() {
              selected = index;
            });
            pageController.jumpToPage(index);
          }, agromarket),
          Expanded(
            child: ListViewProdutos(selected, (int index) {
                setState(() {
                  selected = index;
                });
              }, pageController, agromarket),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: kPrimaryColor,
        elevation: 2,
        child: Icon(
          Icons.shopping_bag_outlined,
          color: Colors.black,
          size: 30,
        ),
      ),
    );
  }
}
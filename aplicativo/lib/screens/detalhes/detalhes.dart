import 'package:flutter/material.dart';
import 'package:aplicativo/cores/principais_cores.dart';
import 'package:aplicativo/modelos/produtos.dart';
import 'package:aplicativo/screens/detalhes/widget/foto_produtos.dart';
import 'package:aplicativo/screens/detalhes/widget/detalhes_produtos.dart';
import 'package:aplicativo/widgets/custom_app_bar.dart';

class DetalhesApp extends StatelessWidget {
  final Produtos produtos;

  DetalhesApp(this.produtos);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(
              Icons.arrow_back_ios_outlined,
              Icons.favorite_outline,
              leftCallback: () => Navigator.of(context).pop(),
            ),
            FotosProduto(produtos),
            DetalheProduto(produtos),
          ],
        ),
      ),
      floatingActionButton: Container(
        width: 100,
        height: 56,
        child: RawMaterialButton(
          fillColor: kPrimaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          elevation: 2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.shopping_bag_outlined,
                color: Colors.black,
                size: 30,
              ),
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Text(produtos.quantidade.toString(),style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 18
                ),),
              ),
            ],
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
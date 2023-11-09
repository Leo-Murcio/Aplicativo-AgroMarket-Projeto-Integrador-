import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:aplicativo/cores/principais_cores.dart';
import 'package:aplicativo/modelos/produtos.dart';
import 'package:aplicativo/screens/detalhes/widget/quant_produtos.dart';

class DetalheProduto extends StatelessWidget {
  final Produtos produtos;

  DetalheProduto(this.produtos);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      margin: EdgeInsets.only(top: 0),
      color: kBackground,
      child: Column(
        children: [
          Text(
            produtos.nome,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildIconText(
                  Icons.access_time_outlined, Colors.green, produtos.tempo),
              _buildIconText(
                  Icons.star_outline, kPrimaryColor, produtos.estrelas.toString()),
              _buildIconText(
                  Icons.local_fire_department_outlined, Colors.green, produtos.estoque),
            ],
          ),
          SizedBox(height: 30),
          ProdutosQuantidade(produtos),
          SizedBox(height: 30),
          Row(
            children: [
              Text(
                'Relacionados',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Container(
            height: 100,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Image.asset(
                      produtos.Relacionados[index].values.first,
                      width: 52,
                    ),
                    Text(produtos.Relacionados[index].keys.first)
                  ],
                ),
              ),
              separatorBuilder: (_, index) => SizedBox(width: 15),
              itemCount: produtos.Relacionados.length,
            ),
          ),
          SizedBox(height: 30),
          Row(
            children: [
              Text(
                'Descrição',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(
            produtos.desc,
            textAlign: TextAlign.justify,
            style: TextStyle(
                wordSpacing: 1.2,
                height: 1.5,
                fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIconText(IconData icon, Color color, String text) {
    return Row(children: [
      Icon(
        icon,
        color: color,
        size: 20,
      ),
      Text(
        text,
        style: TextStyle(fontSize: 16),
      ),
    ]);
  }
}
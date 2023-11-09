import 'package:flutter/material.dart';
import 'package:aplicativo/cores/principais_cores.dart';
import 'package:aplicativo/modelos/app_layout.dart';

class AgroMarketInfo extends StatelessWidget {
  final agromarket = AgroMarket.generateAgroMarket();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16),
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    agromarket.nome,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text(
                          agromarket.tempo,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        agromarket.distancia,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey.withOpacity(0.4),
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        agromarket.sede,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey.withOpacity(0.4),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  agromarket.logo,
                  width: 80,
                ),
              )
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '"${agromarket.descricao}"',
                style: TextStyle(fontSize: 16),
              ),
              Row(
                children: [
                  Icon(Icons.star_outline, color: kPrimaryColor),
                  Text(
                    '${agromarket.estrelas}',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 16)
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
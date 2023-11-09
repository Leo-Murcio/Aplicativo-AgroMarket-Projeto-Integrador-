import 'package:aplicativo/modelos/produtos.dart';

class AgroMarket {
  String nome;
  String tempo;
  String distancia;
  String sede;
  String logo;
  String descricao;
  num estrelas;
  Map<String, List<Produtos>> catalogo;

  AgroMarket(
    this.nome,
    this.tempo,
    this.distancia,
    this.sede,
    this.logo,
    this.descricao,
    this.estrelas,
    this.catalogo,
  );

  static AgroMarket generateAgroMarket() {
    return AgroMarket(
      'AgroMarket',
      '15-20 min',
      '12.1km',
      'Sede em Ivaiporã',
      'assets/fotos/logo.png',
      'MELHORES PRODUTOS',
      4.7,
      {
        'Destaques': Produtos.generateDestaques(),
        'Mais vendidos': Produtos.generateMaisVendidos(),
        'Ofertas': [],
        'Ver Todos': [],
      },
    );
  }
}
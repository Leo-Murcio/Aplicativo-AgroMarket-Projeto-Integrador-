class Produtos {
  String fotos;
  String detalhes;
  String nome;
  String tempo;
  num estrelas;
  String estoque;
  num preco;
  num quantidade;
  List<Map<String, String>> Relacionados;
  String desc;
  bool highLight;

  Produtos(this.fotos, this.detalhes, this.nome, this.tempo, this.estrelas, this.estoque,
      this.preco, this.quantidade, this.Relacionados, this.desc,
      {this.highLight = false});

  static List<Produtos> generateDestaques() {
    return [
      Produtos(
        'assets/fotos/tomate.png',
        '1º em destaque',
        'Tomate',
        'Entrega em 1h20min',
        4.9,
        'Estoque de 38kg',
        9,
        1,
        [
          {
            'Limão': 'assets/fotos/limao.png',
          },
          {
            'Manga': 'assets/fotos/manga.png',
          },
          {
            'Laranja': 'assets/fotos/laranja.png',
          },
          {
            'Abacate': 'assets/fotos/abacate.png',
          },
          {
            'Maçã': 'assets/fotos/maca.png',
          },
        ],
        'Disponível para entrega ou buscar produto.',
        highLight: true,
      ),
      Produtos(
        'assets/fotos/uva.png',
        '2º em destaque',
        'Uva',
        'Entrega em 45min',
        4.2,
        'Estoque de 19kg',
        2,
        1,
        [
          {
            'Mamão': 'assets/fotos/mamao.png',
          },
          {
            'Abaxaxi': 'assets/fotos/abacaxi.png',
          },
          {
            'Melancia': 'assets/fotos/melancia.png',
          },
          {
            'Acerola': 'assets/fotos/acerola.png',
          },
        ],
        'Produto indisponivel no momento.',
        highLight: false,
      ),
      Produtos(
        'assets/fotos/banana.png',
        '3º em destaque',
        'Banana',
        'Entrega em 1h05min',
        4.6,
        'Estoque de 23kg',
        8,
        1,
        [
          {
            'Pêra': 'assets/fotos/pera.png',
          },
          {
            'Melão': 'assets/fotos/melao.png',
          },
          {
            'Pêssego': 'assets/fotos/pessego.png',
          },
          {
            'Kiwi': 'assets/fotos/kiwi.png',
          },
        ],
        'Produto indisponivel no momento.',
        highLight: false,
      ),
    ];
  }

  static List<Produtos> generateMaisVendidos() {
    return [
      Produtos(
        'assets/fotos/milho.png',
        '1º em vendas',
        'Milho',
        'Entrega em 35min',
        4.5,
        'Estoque de 58kg',
        20,
        1,
        [
          {
            'Trigo': 'assets/fotos/trigo.png',
          },
          {
            'Soja': 'assets/fotos/soja.png',
          },
          {
            'Feijão': 'assets/fotos/feijao.png',
          },
          {
            'Arroz': 'assets/fotos/arroz.png',
          },
        ],
        'Disponível para entrega ou buscar produto.',
        highLight: true,
      ),
      Produtos(
        'assets/fotos/morango.png',
        '2º em vendas',
        'Morango',
        'Entrega em 55min',
        4.9,
        'Estoque de 35kg',
        13,
        1,
        [
          {
            'Maçã Verde': 'assets/fotos/macaverde.png',
          },
          {
            'Batata': 'assets/fotos/batata.png',
          },
          {
            'goiaba': 'assets/fotos/goiaba.png',
          },
          {
            'Uva Verde': 'assets/fotos/uvaverde.png',
          },
        ],
        'Produto indisponivel no momento.',
        highLight: false,
      ),
    ];
  }
}
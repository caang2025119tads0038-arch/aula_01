import 'package:aula_01/features/store/domain/entities/product.dart';

class ProductRepository {
  List<Product> products = [
    Product(
      identifier: 'AAA001',
      name: '1994 - Best of Sade - Sade',
      category: 'Vinil',
      price: 199.99,
      rating: 5,
      url: 'https://imusic.b-cdn.net/images/item/original/910/0888751805910.jpg?sade-2016-best-of-sade-lp&class=scaled&v=1751895141',
    ),
    Product(
      identifier: 'AAA002',
      name: '2026 - you seem pretty sad for a girl so in love - Olivia Rodrigo',
      category: 'CD',
      price: 49.99,
      rating: 3.9,
      url: 'https://imusic.b-cdn.net/images/item/original/678/0199957737678.jpg?olivia-rodrigo-2026-you-seem-pretty-sad-for-a-girl-so-in-love-cd&class=scaled&v=1775543549',
    ),
    Product(
      identifier: 'AAA003',
      name: '2012 - channel ORANGE - Frank Ocean',
      category: 'Mídia Digital',
      price: 25.90,
      rating: 5.0,
      url: 'https://cdn-images.dzcdn.net/images/cover/519400e29d268f449cf00af879e71af6/500x0-000000-100-0-0.jpg',
    ),
    Product(
      identifier: 'AAA004',
      name: '2023 - Speak Now (Taylor\'s Version) - Taylor Swift',
      category: 'Cassete',
      price: 75.49,
      rating: 4.2,
      url: 'https://universalmusic.vtexassets.com/arquivos/ids/182199-1200-auto?v=638189934049500000&width=1200&height=auto&aspect=true',
    ),
  ];

  List<Product> getAll() => products;
}

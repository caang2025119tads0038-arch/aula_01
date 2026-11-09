import 'package:flutter/material.dart';

class ProductListPage extends StatelessWidget {
  const ProductListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Produtos')),
      body: ListView(
        children: [
          ListTile(
            leading: Image.network(
              'https://imusic.b-cdn.net/images/item/original/910/0888751805910.jpg?sade-2016-best-of-sade-lp&class=scaled&v=1751895141',
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
            title: Text('Best of Sade - Sade'),
            subtitle: Text('LP. Lançamento: 2016.'),
          ),
          ListTile(
            leading: Image.network(
              'https://imusic.b-cdn.net/images/item/original/678/0199957737678.jpg?olivia-rodrigo-2026-you-seem-pretty-sad-for-a-girl-so-in-love-cd&class=scaled&v=1775543549',
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
            title: Text('you seem pretty sad for a girl so in love - Olivia Rodrigo'),
            subtitle: Text('CD. Lançamento: 2026.'),
          ),
          ListTile(
            leading: Image.network(
              'https://cdn-images.dzcdn.net/images/cover/519400e29d268f449cf00af879e71af6/500x0-000000-100-0-0.jpg',
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
            title: Text('channel ORANGE - Frank Ocean'),
            subtitle: Text('Mídia Digital. Lançamento: 2016.'),
          ),
          ListTile(
            leading: Image.network(
              'https://universalmusic.vtexassets.com/arquivos/ids/182199-1200-auto?v=638189934049500000&width=1200&height=auto&aspect=true',
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
            title: Text('Speak Now (Taylor\'s Version) - Taylor Swift'),
            subtitle: Text('Casete. Lançamento: 2023.'),
          ),
        ],
      ),
    );
  }
}

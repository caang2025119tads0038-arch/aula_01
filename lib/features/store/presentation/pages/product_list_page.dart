import 'package:aula_01/features/store/domain/entities/product.dart';
import 'package:aula_01/features/store/presentation/bloc/product_list_bloc.dart';
import 'package:aula_01/features/store/presentation/bloc/product_list_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductListPage extends StatelessWidget {
  const ProductListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => ProductListBloc(),
      child: Scaffold(
        appBar: AppBar(title: Text('Produtos')),
        body: BlocBuilder<ProductListBloc, ProductListState>(
          builder: (context, state) {
            if (state is ProductListSucess) {
              return ListView.builder(
                itemCount: state.products.length,
                itemBuilder: (BuildContext context, int i) {
                  Product product = state.products[i];
                  return ListTile(
                    title: Text(product.name),
                    subtitle: Text('${product.category} - ${product.identifier}'),
                    leading: Image.network(product.url),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('R\$ ${product.price}'),
                        Text('⭐ ${product.rating}')
                      ],
                    ),
                  );
                },
              );
            }

            if (state is ProdctListFailure) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Center(child: Text(state.message))],
              );
            }

            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Center(child: CircularProgressIndicator())],
            );
          },
        ),
      ),
    );
  }
}

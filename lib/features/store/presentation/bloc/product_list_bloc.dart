import 'package:aula_01/features/store/domain/entities/product.dart';
import 'package:aula_01/features/store/infra/data/product_repository.dart';
import 'package:aula_01/features/store/presentation/bloc/product_list_event.dart';
import 'package:aula_01/features/store/presentation/bloc/product_list_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductListBloc extends Bloc<ProductListEvent, ProductListState> {
  final ProductRepository produtctRepo = ProductRepository();
  ProductListBloc() : super(ProductListLoading()) {
    on<ProductListInitialize>((event, emit) async {
      List<Product> data = produtctRepo.getAll();
      if (data.isNotEmpty) {
        await Future.delayed(Duration(seconds: 3));
        emit(ProductListSucess(products: data));
      } else {
        await Future.delayed(Duration(seconds: 3));
        emit(ProdctListFailure(message: 'Algo deu errado...'));
      }
    });
    add(ProductListInitialize());
  }
}

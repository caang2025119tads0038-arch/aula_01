import 'package:aula_01/features/store/domain/entities/product.dart';

sealed class ProductListState {}

class ProductListLoading extends ProductListState {}

class ProductListSucess extends ProductListState {
  final List<Product> products;
  ProductListSucess({required this.products});
}

class ProdctListFailure extends ProductListState {
  final String message;
  ProdctListFailure({required this.message});
}
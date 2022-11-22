part of 'product_bloc.dart';

abstract class ProductState extends Equatable {
  const ProductState();
}

class ProductLoadingState extends ProductState {
  @override
  List<Object?> get props => [];

}

class ProductLoadedState extends ProductState {
  List<ProductEntity> loadedProduct;
  ProductLoadedState({
    required this.loadedProduct,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [loadedProduct];
}

class ProductErrorState extends ProductState {
  final String message;

  const ProductErrorState({required this.message});

  @override
  List<Object?> get props => [message];
}
import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:portfolio_app/domain/entities/product_entity.dart';
import 'package:portfolio_app/domain/usecases/get_all_product.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final GetAllProductUseCase getAllProductUseCase;

  ProductBloc({required this.getAllProductUseCase}) : super(ProductLoadingState()) {
    on<ProductLoadEvent>((event, emit) async {
      emit(ProductLoadingState());
      List<ProductEntity> _productList = [];
      final _loadedProductList = await getAllProductUseCase();

      _loadedProductList.fold((l) => emit(const ProductErrorState(message: 'error')),
              (r) => _productList.addAll(r));

      emit(ProductLoadedState(loadedProduct: _productList));
    }
    );
  }
}

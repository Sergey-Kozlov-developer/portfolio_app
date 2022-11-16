import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:portfolio_app/presentation/home_page/model/best_seller.dart';
import 'package:portfolio_app/presentation/home_page/model/home_store.dart';

part 'store_event.dart';
part 'store_state.dart';

class StoreBloc extends Bloc<StoreEvent, StoreState> {
  StoreBloc() : super(StoreEmptyState()) {
    on<StoreLoadEvent>((event, emit) async {
      emit(StoreLoadingState());

      List<HomeStoreList> _loadedHomeStoreList = [];
      List<BestSellerList> _loadedBestSellerList = [];
      // _loadedHomeStoreList = _storeList.map<List<HomeStoreList>>((e) => e.homeStore!).expand((element) => element).toList();
      emit(StoreLoadedState(loadedHomeStore: _loadedHomeStoreList, loadedBestseller: _loadedBestSellerList));

    });
  }
}

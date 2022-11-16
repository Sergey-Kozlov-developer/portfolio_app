part of 'store_bloc.dart';

abstract class StoreState extends Equatable {
  const StoreState();
}

// class StoreInitial extends StoreState {
//   @override
//   List<Object> get props => [];
// }

class StoreEmptyState extends StoreState {
  @override
  List<Object?> get props => [];
}

// индикатор загрузки
class StoreLoadingState extends StoreState {
  @override
  List<Object?> get props => [];
}

// данные загружены
class StoreLoadedState extends StoreState {
  final List<HomeStoreList> loadedHomeStore;
  final List<BestSellerList> loadedBestseller;

  const StoreLoadedState({
    required this.loadedHomeStore,
    required this.loadedBestseller,
  });

  @override
  List<Object?> get props => [loadedHomeStore, loadedBestseller];
}

// ошибка загрузки
class StoreErrorState extends StoreState {
  @override
  List<Object?> get props => [];
}

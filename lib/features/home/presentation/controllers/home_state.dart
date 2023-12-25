part of 'home_cubit.dart';

@immutable
abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

class HomeProductsInitialState extends HomeState {}

class HomeProductsLoadingState extends HomeState {}

class HomeProductsSuccessState extends HomeState {
  final List<ProductModel> products;

  const HomeProductsSuccessState(this.products);

  @override
  List<Object> get props => [products];
}

class HomeProductsErrorState extends HomeState {
  final String msg;
  final PageStates errorType;
  const HomeProductsErrorState(this.msg, this.errorType);

  @override
  List<Object> get props => [msg, errorType];
}

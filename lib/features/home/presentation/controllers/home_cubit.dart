import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mnjz/features/home/data/models/product_model.dart';

import '../../../../core/utils/helpers/enums.dart';
import '../../domain/use_cases/get_home_products_use_case.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.getHomeProductsUseCase) : super(HomeProductsInitialState());

  static HomeCubit get(context) => BlocProvider.of(context);

  final GetHomeProductsUseCase getHomeProductsUseCase;

  List<ProductModel> allProducts = [];

  void getHomeProducts() async {
    emit(HomeProductsLoadingState());

    final result = await getHomeProductsUseCase.executeGetHomeProductsProcess();
    result.fold((failure) {
      emit(HomeProductsErrorState(failure.status_message, failure.errorType));
    }, (data) {
      allProducts.addAll(data);

      emit(HomeProductsSuccessState(allProducts));
    });
  }

  void searchProducts(String query) {
    emit(HomeProductsLoadingState());

    if (query.isNotEmpty) {
      final List<ProductModel> filteredProducts = allProducts
          .where((product) =>
              product.title!.toLowerCase().contains(query.toLowerCase()))
          .toList();
      if (filteredProducts.isNotEmpty) {
        emit(HomeProductsSuccessState(filteredProducts));
      } else {
        emit(const HomeProductsErrorState('No Data Found', PageStates.noData));
      }
    } else {
      emit(HomeProductsSuccessState(allProducts));
    }
  }

  @override
  void onChange(Change<HomeState> change) {
    super.onChange(change);
    debugPrint('bloc change : $change');
  }
}

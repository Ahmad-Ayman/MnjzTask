import 'package:dartz/dartz.dart';

import '../../../../../../../core/networking/error_model/error_message_model.dart';
import '../../../../core/utils/helpers/enums.dart';
import '../../domain/repositories/base_home_repository.dart';
import '../data_sources/remote_data_source/home_products_remote_service.dart';
import '../models/product_model.dart';

class HomeRepository implements BaseHomeRepository {
  final HomeProductsRemoteService homeProductsRemoteService;

  HomeRepository(this.homeProductsRemoteService);

  @override
  Future<Either<ErrorMessageModel, List<ProductModel>>>
      getHomeProducts() async {
    final remoteResponse =
        await homeProductsRemoteService.homeProductsService();

    return remoteResponse.when(
      noConnection: () {
        return left(
          const ErrorMessageModel(
              status_message: 'No Internet Connection',
              success: false,
              errorType: PageStates.internetError),
        );
      },
      failure: (message, success, errorType) {
        return left(ErrorMessageModel(
            status_message: message, success: success, errorType: errorType));
      },
      data: (productsData) {
        return right(productsData);
      },
    );
  }
}

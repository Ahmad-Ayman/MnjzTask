import 'package:mnjz/features/home/data/models/product_model.dart';

import '../../../../../../../../core/networking/api_constants.dart';
import '../../../../../core/services/network_service.dart';
import '../../../../../../../../core/networking/remote_response.dart';

class HomeProductsRemoteService {
  final RemoteService _service;

  HomeProductsRemoteService(this._service);

  Future<RemoteResponse<List<ProductModel>>> homeProductsService() async {
    final remoteResponse = await _service.dioGet(ApiConstants.productsEndpoint);

    return remoteResponse.when(
      noConnection: () => const RemoteResponse.noConnection(),
      failure: (message, success, errorType) =>
          RemoteResponse.failure(message, success, errorType),
      data: (data) {
        List dataList = data as List;
        List<ProductModel> productsList = [];
        for (var product in dataList) {
          productsList.add(ProductModel.fromJson(product));
        }

        return RemoteResponse.data(productsList);
      },
    );
  }
}

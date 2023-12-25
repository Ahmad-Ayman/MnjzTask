import 'package:dartz/dartz.dart';

import '../../../../core/networking/error_model/error_message_model.dart';
import '../../data/models/product_model.dart';
import '../repositories/base_home_repository.dart';

class GetHomeProductsUseCase {
  final BaseHomeRepository baseHomeRepository;

  GetHomeProductsUseCase(this.baseHomeRepository);

  Future<Either<ErrorMessageModel, List<ProductModel>>>
      executeGetHomeProductsProcess() async {
    return await baseHomeRepository.getHomeProducts();
  }
}

import 'package:dartz/dartz.dart';
import 'package:mnjz/features/home/data/models/product_model.dart';

import '../../../../core/networking/error_model/error_message_model.dart';

abstract class BaseHomeRepository {
  Future<Either<ErrorMessageModel, List<ProductModel>>> getHomeProducts();
}

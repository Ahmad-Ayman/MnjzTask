import 'package:isar/isar.dart';

import '../../../../../core/failures/exception.dart';
import '../../../../../core/networking/api_constants.dart';
import '../../../../../core/services/local_storage_service.dart';
import '../../models/local_product_model.dart';

class HomeProductsLocalService {
   LocalStorageService _localService;

   HomeProductsLocalService(this._localService);


   Future<List<LocalProducts>> homeProductsLocalService() async {
     return  await _localService.localDbGetAllData();
   }

}
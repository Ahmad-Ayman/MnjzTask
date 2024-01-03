import 'package:isar/isar.dart';
import 'package:mnjz/features/home/data/models/product_model.dart';
part 'local_product_model.g.dart';
@Collection()
class LocalProducts {
  Id? id;
  String? title;
  double? price;
  String? description;
  String? category;
  String? image;
  LocalRatings? ratings;
}

@embedded
class LocalRatings {
  LocalRatings({
    this.rate,
    this.count,
  });

  double? rate;
  int? count;
}

import 'assetsManager.dart';
import 'enums.dart';

String setImage(PageStates states) {
  String? handlingImage;

  switch (states) {
    case PageStates.error:
      handlingImage = AssetsManager.errorAsset;
      break;
    case PageStates.noData:
      handlingImage = AssetsManager.noDataAsset;
      break;
    case PageStates.internetError:
      handlingImage = AssetsManager.noInternetAsset;
  }
  return handlingImage;
}

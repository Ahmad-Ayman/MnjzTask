import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../helpers/assetsManager.dart';

class CustomImage extends StatelessWidget {
  const CustomImage(
      {super.key, required this.imagePath, required this.isCircleImage});

  final String imagePath;
  final bool isCircleImage;

  @override
  Widget build(BuildContext context) {
    return isCircleImage
        ? CircleAvatar(
            backgroundImage: CachedNetworkImageProvider(
              imagePath,
            ),
            radius: 60,
          )
        : AspectRatio(
            aspectRatio: 2 / 3,
            child: CachedNetworkImage(
              imageUrl: imagePath,
              progressIndicatorBuilder: (context, url, downloadProgress) =>
                  Center(
                child:
                    CircularProgressIndicator(value: downloadProgress.progress),
              ),
              errorWidget: (context, url, error) => AspectRatio(
                aspectRatio: 2 / 3,
                child: Image.asset(
                  AssetsManager.noImageAsset,
                  fit: BoxFit.cover,
                ),
              ),
              fit: BoxFit.fill,
              width: double.infinity,
            ),
          );
  }
}

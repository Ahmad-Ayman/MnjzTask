import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mnjz/core/utils/helpers/extensions.dart';

import '../../../../core/utils/components/custom_image.dart';
import '../../../../core/utils/components/custom_text.dart';
import '../../../../core/utils/helpers/enums.dart';
import '../../data/models/product_model.dart';

class CustomGridItem extends StatelessWidget {
  const CustomGridItem({super.key, required this.product});

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.pushNamed(
          Routes.MovieDetailsScreen.name,
          extra: product,
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: CustomImage(
                isCircleImage: false,
                imagePath: product.image ?? '',
              )),
          8.ph,
          CustomText(
            text: '${product.title ?? 'Product Name '
                'Unavailable'}',
            fontSize: 12,
            fontColor: Colors.white,
            fontWeight: FontWeight.w700,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.start,
          ),
        ],
      ),
    );
  }
}

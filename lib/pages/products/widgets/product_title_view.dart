// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_fic7_app/utils/price_ext.dart';

import '../../../data/models/products_response_model.dart';
import '../../../utils/color_resources.dart';
import '../../../utils/custom_themes.dart';
import '../../../utils/dimensions.dart';

class ProductTitleView extends StatelessWidget {
  // final pd.ProductDetailsModel? productModel;
  final Product product;
  final String? averageRatting;
  const ProductTitleView({
    Key? key,
    required this.product,
    this.averageRatting,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(Dimensions.paddingSizeSmall),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(children: [
              Expanded(
                  child: Text(product.name!,
                      style: titleRegular.copyWith(
                          fontSize: Dimensions.fontSizeLarge),
                      maxLines: 2)),
              const SizedBox(width: Dimensions.paddingSizeExtraSmall),
              Column(
                children: [
                  Text(
                    '${product.price}'.formatPrice(),
                    style: titilliumBold.copyWith(
                        color: ColorResources.getPrimary(context),
                        fontSize: Dimensions.fontSizeLarge),
                  ),
                ],
              ),
            ]),
            const SizedBox(height: Dimensions.paddingSizeSmall),
          ],
        ));
  }
}

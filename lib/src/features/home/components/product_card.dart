import 'package:coditron_app/src/constants/app_assets.dart';
import 'package:coditron_app/src/constants/app_sizes.dart';
import 'package:coditron_app/src/theme/app_theme.dart';
import 'package:flutter/material.dart';

class ProductCards extends StatelessWidget {
  const ProductCards({
    super.key,
    required this.productDataImage,
    required this.productDataName,
    required this.garmentProduct,
    this.garmentproductSaleprice,
    this.garmentproductprice,
  });

  final List<String> productDataImage;
  final List<String> productDataName;
  final bool garmentProduct;
  final List<String>? garmentproductSaleprice;
  final List<String>? garmentproductprice;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      primary: false,
      itemCount: 4,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 20.0,
        crossAxisSpacing: 20.0,
        childAspectRatio: garmentProduct == true ? 0.9 : 1.0,
      ),
      itemBuilder: (c, i) {
        return Container(
          decoration: const BoxDecoration(
            color: AppColor.whiteColor,
            boxShadow: [
              BoxShadow(
                color: AppColor.kShadowColor,
                spreadRadius: 2.0,
                blurRadius: 1.0,
                offset: Offset(0.0, 2.0),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                productDataImage[i],
                height: 150,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              gapH12,
              garmentProduct == true
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          AppAsset.prodRatings,
                          height: 20,
                        ),
                        gapW8,
                        Text(
                          productDataName[i],
                        ),
                      ],
                    )
                  : Text(
                      productDataName[i],
                    ),
              garmentProduct == true ? gapH4 : const SizedBox.shrink(),
              garmentProduct == true
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          garmentproductSaleprice![i],
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    decoration: TextDecoration.lineThrough,
                                  ),
                        ),
                        gapW8,
                        Text(
                          garmentproductSaleprice![i],
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(),
                        )
                      ],
                    )
                  : const SizedBox.shrink(),
            ],
          ),
        );
      },
    );
  }
}

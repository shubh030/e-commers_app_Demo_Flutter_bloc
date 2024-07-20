import 'package:coditron_app/src/constants/app_sizes.dart';
import 'package:coditron_app/src/theme/app_theme.dart';
import 'package:coditron_app/src/utils/dummy_data.dart';
import 'package:flutter/material.dart';

class TopProdCards extends StatelessWidget {
  TopProdCards({super.key});

  final ValueNotifier<int> favProduct = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...List.generate(
          3,
          (index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: MediaQuery.of(context).size.height / 5,
              width: MediaQuery.of(context).size.width / 2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColor.whiteColor,
              ),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 10),
                    child: ValueListenableBuilder(
                      valueListenable: favProduct,
                      builder: (context, child, val) {
                        return InkWell(
                          onTap: () {
                            favProduct.value = index;
                          },
                          child: favProduct.value == index
                              ? const Icon(
                                  Icons.favorite,
                                  color: AppColor.primaryColor,
                                )
                              : const Icon(
                                  Icons.favorite_border,
                                ),
                        );
                      },
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        DummyData.topProdImages[index],
                        height: 120,
                      ),
                      Text(
                        DummyData.topProductName[index],
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            DummyData.topProductSalePrice[index],
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          gapW8,
                          Text(
                            DummyData.topProductPrice[index],
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  decoration: TextDecoration.lineThrough,
                                ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

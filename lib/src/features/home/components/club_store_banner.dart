import 'package:coditron_app/src/constants/app_assets.dart';
import 'package:coditron_app/src/constants/app_sizes.dart';
import 'package:coditron_app/src/features/home/components/product_card.dart';
import 'package:coditron_app/src/theme/app_theme.dart';
import 'package:coditron_app/src/utils/dummy_data.dart';
import 'package:flutter/material.dart';

class ClubStoreBanner extends StatelessWidget {
  ClubStoreBanner({super.key});

  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Image.asset(AppAsset.banner),
            Padding(
              padding: const EdgeInsets.only(top: 250),
              child: Center(
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  width: MediaQuery.of(context).size.width / 1.2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColor.whiteColor,
                    boxShadow: const [
                      BoxShadow(
                        color: AppColor.kShadowColor,
                        spreadRadius: 2.0,
                        blurRadius: 1.0,
                        offset: Offset(0.0, 2.0),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        AppAsset.palace,
                      ),
                      Column(
                        children: [
                          Text(
                            'Crystal Palace FC',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  color: AppColor.blackColor,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          const Text('100 Products'),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        gapH20,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 1.2,
              height: 60,
              margin: const EdgeInsets.only(left: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: AppColor.blackColor,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: TextFormField(
                  controller: searchController,
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                  decoration: const InputDecoration(
                    hintText: 'Search by product store',
                    border: InputBorder.none,
                    hintStyle: TextStyle(color: Colors.black, fontSize: 17.0),
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: Icon(
                      Icons.mic,
                    ),
                  ),
                  onChanged: (val) async {},
                ),
              ),
            ),
            Image.asset(
              AppAsset.filter,
              // height: 50,
            ),
          ],
        ),
        gapH20,
        const ProductCards(
          productDataImage: DummyData.garmentProduct,
          productDataName: DummyData.garmentProductsName,
          garmentproductSaleprice: DummyData.garmentProductSalePrice,
          garmentproductprice: DummyData.garmentProductPrice,
          garmentProduct: true,
        ),
      ],
    );
  }
}

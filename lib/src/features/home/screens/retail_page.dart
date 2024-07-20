import 'package:coditron_app/src/constants/app_assets.dart';
import 'package:coditron_app/src/constants/app_sizes.dart';
import 'package:coditron_app/src/features/home/components/product_card.dart';
import 'package:coditron_app/src/features/home/components/title.dart';
import 'package:coditron_app/src/features/home/components/top_prod_cards.dart';
import 'package:coditron_app/src/features/home/components/top_slider.dart';
import 'package:coditron_app/src/features/home/screens/club_list_page.dart';
import 'package:coditron_app/src/features/home/screens/club_store_page.dart';
import 'package:coditron_app/src/theme/app_theme.dart';
import 'package:coditron_app/src/utils/dummy_data.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class RetailPage extends StatelessWidget {
  const RetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          physics: const BouncingScrollPhysics(),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [Image.asset(AppAsset.appFrame1)],
                ),
                Row(
                  children: [
                    const Icon(Icons.search),
                    gapW8,
                    const Icon(Iconsax.heart),
                    gapW8,
                    const Icon(Icons.shopping_cart),
                    gapW8,
                    Image.asset(AppAsset.appFrame2),
                  ],
                ),
              ],
            ),
            gapH12,
            TopSlider(),
            gapH16,
            InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ClubStorePage(),
                    ),
                  );
                },
                child: const ClubListPage()),
            gapH16,
            Container(
              height: MediaQuery.of(context).size.height / 4,
              width: MediaQuery.of(context).size.width,
              color: AppColor.primaryColor,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    TopProdCards(),
                  ],
                ),
              ),
            ),
            gapH16,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const AppTitle(
                  title: 'Electronics',
                  widget: 60,
                  size: 22,
                ),
                Text(
                  'See All',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: AppColor.primaryColor,
                      ),
                )
              ],
            ),
            gapH16,
            const ProductCards(
              productDataImage: DummyData.electronicsProduct,
              productDataName: DummyData.electronicsProductsName,
              garmentProduct: false,
            ),
            gapH16,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const AppTitle(
                  title: 'Home Decor',
                  widget: 60,
                  size: 22,
                ),
                Text(
                  'See All',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: AppColor.primaryColor,
                      ),
                )
              ],
            ),
            gapH16,
            const ProductCards(
              productDataImage: DummyData.homeDecorProduct,
              productDataName: DummyData.homeDecorProductsName,
              garmentProduct: false,
            ),
            gapH16,
            const AppTitle(
              title: 'Shop By Brand',
              widget: 60,
              size: 22,
            ),
            Image.asset(
              AppAsset.brandLogos,
            ),
            gapH16,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const AppTitle(
                  title: 'Garment & Sneakers',
                  widget: 60,
                  size: 22,
                ),
                Text(
                  'See All',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: AppColor.primaryColor,
                      ),
                )
              ],
            ),
            gapH16,
            const ProductCards(
              productDataImage: DummyData.garmentProduct,
              productDataName: DummyData.garmentProductsName,
              garmentproductSaleprice: DummyData.garmentProductSalePrice,
              garmentproductprice: DummyData.garmentProductPrice,
              garmentProduct: true,
            ),
            gapH16,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const AppTitle(
                  title: 'Fashion & Accessories',
                  widget: 60,
                  size: 22,
                ),
                Text(
                  'See All',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: AppColor.primaryColor,
                      ),
                )
              ],
            ),
            gapH16,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Image.asset(AppAsset.clothes),
                    gapH12,
                    Image.asset(AppAsset.watch),
                  ],
                ),
                Image.asset(AppAsset.dress)
              ],
            )
          ],
        ),
      ),
    );
  }
}

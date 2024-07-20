import 'package:coditron_app/src/constants/app_assets.dart';
import 'package:coditron_app/src/constants/app_sizes.dart';
import 'package:coditron_app/src/features/home/components/club_store_banner.dart';
import 'package:coditron_app/src/features/home/components/top_slider.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ClubStorePage extends StatelessWidget {
  const ClubStorePage({super.key});

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
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios,
                  ),
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
            ClubStoreBanner(),
          ],
        ),
      ),
    );
  }
}

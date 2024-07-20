import 'package:coditron_app/src/theme/app_theme.dart';
import 'package:coditron_app/src/utils/dummy_data.dart';
import 'package:flutter/material.dart';

class TopSlider extends StatelessWidget {
  TopSlider({super.key});

  final ValueNotifier<int> selectedCategory = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ...List.generate(
          3,
          (index) => ValueListenableBuilder(
              valueListenable: selectedCategory,
              builder: (context, value, child) {
                return InkWell(
                  onTap: () {
                    selectedCategory.value = index;
                  },
                  splashColor: Colors.transparent,
                  child: AnimatedContainer(
                    duration: const Duration(
                      milliseconds: 400,
                    ),
                    padding: value == index
                        ? const EdgeInsets.all(10)
                        : const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: value == index
                            ? AppColor.primaryColor
                            : AppColor.whiteColor,
                        border: Border.all(
                          color: value == index
                              ? Colors.transparent
                              : AppColor.blackColor,
                        )),
                    child: Row(
                      children: [
                        Icon(
                          DummyData.sliderIcons[index],
                          color: value == index
                              ? AppColor.whiteColor
                              : AppColor.blackColor,
                        ),
                        Text(
                          DummyData.sliderData[index],
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: value == index
                                        ? AppColor.whiteColor
                                        : AppColor.blackColor,
                                  ),
                        )
                      ],
                    ),
                  ),
                );
              }),
        ),
      ],
    );
  }
}

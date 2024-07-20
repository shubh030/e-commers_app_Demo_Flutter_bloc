import 'package:flutter/material.dart';

@immutable
abstract class Sizes {
  const Sizes._();
  static const double p4 = 4.0;
  static const double p8 = 8.0;
  static const double p12 = 12.0;
  static const double p16 = 16.0;
  static const double p20 = 20.0;
  static const double p24 = 24.0;
  static const double p28 = 28.0;
  static const double p32 = 32.0;
  static const double p48 = 48.0;
  static const double p64 = 64.0;
  static const double p80 = 80.0;
  static const double p96 = 96.0;
  static const double p112 = 112.0;
  static const int d300 = 300;
  static const int d400 = 400;
}

/// Constant gap widths
const SizedBox gapW4 = SizedBox(width: Sizes.p4);
const SizedBox gapW8 = SizedBox(width: Sizes.p8);
const SizedBox gapW12 = SizedBox(width: Sizes.p12);
const SizedBox gapW16 = SizedBox(width: Sizes.p16);
const SizedBox gapW20 = SizedBox(width: Sizes.p20);
const SizedBox gapW24 = SizedBox(width: Sizes.p24);
const SizedBox gapW32 = SizedBox(width: Sizes.p32);
const SizedBox gapW48 = SizedBox(width: Sizes.p48);
const SizedBox gapW64 = SizedBox(width: Sizes.p64);

/// Constant gap heights
const SizedBox gapH4 = SizedBox(height: Sizes.p4);
const SizedBox gapH8 = SizedBox(height: Sizes.p8);
const SizedBox gapH12 = SizedBox(height: Sizes.p12);
const SizedBox gapH16 = SizedBox(height: Sizes.p16);
const SizedBox gapH20 = SizedBox(height: Sizes.p20);
const SizedBox gapH24 = SizedBox(height: Sizes.p24);
const SizedBox gapH32 = SizedBox(height: Sizes.p32);
const SizedBox gapH48 = SizedBox(height: Sizes.p48);
const SizedBox gapH64 = SizedBox(height: Sizes.p64);
const SizedBox gapH80 = SizedBox(height: Sizes.p80);
const SizedBox gapH96 = SizedBox(height: Sizes.p96);
const SizedBox gapH112 = SizedBox(height: Sizes.p112);

/// Padding Constant
const double kDefaultPadding = Sizes.p16;
const double kBorderRadius = Sizes.p12;

/// Duration
const Duration defaultDuration = Duration(milliseconds: Sizes.d400);

const double webSize = 900;
const double tabletSize = 600;

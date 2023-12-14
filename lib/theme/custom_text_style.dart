import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBlack900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.46),
      );
  static get bodyLargeBlack900Regular => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.49),
        fontWeight: FontWeight.w400,
      );
  static get bodyLargeBlack900Regular_1 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.56),
        fontWeight: FontWeight.w400,
      );
  static get bodyLargeBlack900_1 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.56),
      );
  static get bodyLargeBlack900_2 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.53),
      );
  static get bodyLargeInter => theme.textTheme.bodyLarge!.inter.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get bodyLargeInterRegular => theme.textTheme.bodyLarge!.inter.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get bodyLargeInterSecondaryContainer =>
      theme.textTheme.bodyLarge!.inter.copyWith(
        color: theme.colorScheme.secondaryContainer,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodyLargePrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodyLargePrimaryRegular => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumBlack900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.56),
        fontSize: 13.fSize,
      );
  static get bodyMediumBlack90013 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 13.fSize,
      );
  static get bodyMediumBlack90013_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.56),
        fontSize: 13.fSize,
      );
  static get bodyMediumBlack90014 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 14.fSize,
      );
  static get bodyMediumBlack90014_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.46),
        fontSize: 14.fSize,
      );
  static get bodyMediumBlack90014_2 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.53),
        fontSize: 14.fSize,
      );
  static get bodyMediumBlack90014_3 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.53),
        fontSize: 14.fSize,
      );
  static get bodyMediumBlack90014_4 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 14.fSize,
      );
  static get bodyMediumBlack900_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.64),
      );
  static get bodyMediumGray90001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray90001.withOpacity(0.56),
        fontSize: 13.fSize,
      );
  static get bodyMediumLexend => theme.textTheme.bodyMedium!.lexend.copyWith(
        fontSize: 14.fSize,
      );
  static get bodyMediumLexendBlack900 =>
      theme.textTheme.bodyMedium!.lexend.copyWith(
        color: appTheme.black900.withOpacity(0.53),
        fontSize: 14.fSize,
      );
  static get bodyMediumLexendBlack90014 =>
      theme.textTheme.bodyMedium!.lexend.copyWith(
        color: appTheme.black900,
        fontSize: 14.fSize,
      );
  static get bodyMediumLexendBlack90014_1 =>
      theme.textTheme.bodyMedium!.lexend.copyWith(
        color: appTheme.black900.withOpacity(0.64),
        fontSize: 14.fSize,
      );
  static get bodyMediumLexendBlack900Light =>
      theme.textTheme.bodyMedium!.lexend.copyWith(
        color: appTheme.black900.withOpacity(0.64),
        fontSize: 14.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumLexendBlack900Light14 =>
      theme.textTheme.bodyMedium!.lexend.copyWith(
        color: appTheme.black900,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumLexendGray500 =>
      theme.textTheme.bodyMedium!.lexend.copyWith(
        color: appTheme.gray500,
        fontSize: 14.fSize,
      );
  static get bodyMediumLexendPrimary =>
      theme.textTheme.bodyMedium!.lexend.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 14.fSize,
      );
  static get bodyMediumLexendPrimary14 =>
      theme.textTheme.bodyMedium!.lexend.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 14.fSize,
      );
  static get bodyMediumOnError => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onError,
        fontSize: 14.fSize,
      );
  static get bodyMediumSFProTextBlack900 =>
      theme.textTheme.bodyMedium!.sFProText.copyWith(
        color: appTheme.black900.withOpacity(0.64),
      );
  static get bodySmall8 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 8.fSize,
      );
  static get bodySmallBlack900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
        fontSize: 11.fSize,
      );
  static get bodySmallBlack90011 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
        fontSize: 11.fSize,
      );
  static get bodySmallBlack90011_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900.withOpacity(0.5),
        fontSize: 11.fSize,
      );
  static get bodySmallBlack90011_2 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
        fontSize: 11.fSize,
      );
  static get bodySmallBlack90012 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900.withOpacity(0.4),
        fontSize: 12.fSize,
      );
  static get bodySmallBlack90012_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900.withOpacity(0.4),
        fontSize: 12.fSize,
      );
  static get bodySmallBlack90012_2 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900.withOpacity(0.49),
        fontSize: 12.fSize,
      );
  static get bodySmallBlack90012_3 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
        fontSize: 12.fSize,
      );
  static get bodySmallBlack900Light => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
        fontSize: 11.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallBlack900_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
      );
  static get bodySmallInter => theme.textTheme.bodySmall!.inter.copyWith(
        fontSize: 8.fSize,
      );
  static get bodySmallInter12 => theme.textTheme.bodySmall!.inter.copyWith(
        fontSize: 12.fSize,
      );
  static get bodySmallInterBlack900 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.black900.withOpacity(0.7),
        fontSize: 11.fSize,
      );
  static get bodySmallInterBlack90011 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.black900.withOpacity(0.7),
        fontSize: 11.fSize,
      );
  static get bodySmallInterBlack90011_1 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.black900,
        fontSize: 11.fSize,
      );
  static get bodySmallInterBlack90011_2 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.black900.withOpacity(0.56),
        fontSize: 11.fSize,
      );
  static get bodySmallInterBlack90012 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.black900,
        fontSize: 12.fSize,
      );
  static get bodySmallInterBlack90012_1 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.black900.withOpacity(0.49),
        fontSize: 12.fSize,
      );
  static get bodySmallInterBlack90012_2 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.black900,
        fontSize: 12.fSize,
      );
  static get bodySmallInterBlack90012_3 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.black900.withOpacity(0.6),
        fontSize: 12.fSize,
      );
  static get bodySmallInterBlack90012_4 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.black900.withOpacity(0.56),
        fontSize: 12.fSize,
      );
  static get bodySmallInterBlack90012_5 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.black900,
        fontSize: 12.fSize,
      );
  static get bodySmallInterBlack9009 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.black900.withOpacity(0.49),
        fontSize: 9.fSize,
      );
  static get bodySmallInterBlack900Light =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.black900.withOpacity(0.56),
        fontSize: 12.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallInterBlack900Light12 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.black900,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallInterBlack900_1 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.black900.withOpacity(0.6),
      );
  static get bodySmallInterBlack900_2 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.black900.withOpacity(0.49),
      );
  static get bodySmallInterBlack900_3 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.black900,
      );
  static get bodySmallInterBlack900_4 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.black900,
      );
  static get bodySmallInterBlack900_5 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.black900.withOpacity(0.49),
      );
  static get bodySmallInterBlueA400 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.blueA400,
        fontSize: 12.fSize,
      );
  static get bodySmallInterGray90002 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.gray90002,
        fontSize: 12.fSize,
      );
  static get bodySmallInterPrimary => theme.textTheme.bodySmall!.inter.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 11.fSize,
      );
  static get bodySmallInter_1 => theme.textTheme.bodySmall!.inter;
  // Headline text style
  static get headlineLargeBlack900 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.56),
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallInterBlack900 =>
      theme.textTheme.headlineSmall!.inter.copyWith(
        color: appTheme.black900,
      );
  static get headlineSmallInterPrimaryContainer =>
      theme.textTheme.headlineSmall!.inter.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
      );
  // Inter text style
  static get interBlack900 => TextStyle(
        color: appTheme.black900.withOpacity(0.49),
        fontSize: 3.fSize,
        fontWeight: FontWeight.w500,
      ).inter;
  static get interBlack900Bold => TextStyle(
        color: appTheme.black900.withOpacity(0.56),
        fontSize: 2.fSize,
        fontWeight: FontWeight.w700,
      ).inter;
  static get interBlack900Bold3 => TextStyle(
        color: appTheme.black900.withOpacity(0.64),
        fontSize: 3.fSize,
        fontWeight: FontWeight.w700,
      ).inter;
  static get interBlack900Bold3_1 => TextStyle(
        color: appTheme.black900.withOpacity(0.64),
        fontSize: 3.fSize,
        fontWeight: FontWeight.w700,
      ).inter;
  static get interBlack900Light => TextStyle(
        color: appTheme.black900,
        fontSize: 3.fSize,
        fontWeight: FontWeight.w300,
      ).inter;
  static get interBlack900Medium => TextStyle(
        color: appTheme.black900.withOpacity(0.49),
        fontSize: 3.fSize,
        fontWeight: FontWeight.w500,
      ).inter;
  static get interBlack900Medium2 => TextStyle(
        color: appTheme.black900.withOpacity(0.49),
        fontSize: 2.fSize,
        fontWeight: FontWeight.w500,
      ).inter;
  static get interBlack900Medium2_1 => TextStyle(
        color: appTheme.black900.withOpacity(0.56),
        fontSize: 2.fSize,
        fontWeight: FontWeight.w500,
      ).inter;
  static get interBlack900Medium4 => TextStyle(
        color: appTheme.black900,
        fontSize: 4.fSize,
        fontWeight: FontWeight.w500,
      ).inter;
  static get interBlack900Medium4_1 => TextStyle(
        color: appTheme.black900,
        fontSize: 4.fSize,
        fontWeight: FontWeight.w500,
      ).inter;
  static get interBlack900Medium4_2 => TextStyle(
        color: appTheme.black900.withOpacity(0.56),
        fontSize: 4.fSize,
        fontWeight: FontWeight.w500,
      ).inter;
  static get interBlack900Regular => TextStyle(
        color: appTheme.black900.withOpacity(0.56),
        fontSize: 3.fSize,
        fontWeight: FontWeight.w400,
      ).inter;
  static get interBlack900Regular2 => TextStyle(
        color: appTheme.black900.withOpacity(0.49),
        fontSize: 2.fSize,
        fontWeight: FontWeight.w400,
      ).inter;
  static get interBlack900SemiBold => TextStyle(
        color: appTheme.black900.withOpacity(0.64),
        fontSize: 3.fSize,
        fontWeight: FontWeight.w600,
      ).inter;
  static get interBlueA400 => TextStyle(
        color: appTheme.blueA400,
        fontSize: 3.fSize,
        fontWeight: FontWeight.w500,
      ).inter;
  static get interBlueA400Medium => TextStyle(
        color: appTheme.blueA400.withOpacity(0.6),
        fontSize: 2.fSize,
        fontWeight: FontWeight.w500,
      ).inter;
  static get interBlueA400Medium2 => TextStyle(
        color: appTheme.blueA400.withOpacity(0.64),
        fontSize: 2.fSize,
        fontWeight: FontWeight.w500,
      ).inter;
  static get interBluegray400 => TextStyle(
        color: appTheme.blueGray400,
        fontSize: 3.fSize,
        fontWeight: FontWeight.w600,
      ).inter;
  static get interGray50002 => TextStyle(
        color: appTheme.gray50002,
        fontSize: 6.fSize,
        fontWeight: FontWeight.w500,
      ).inter;
  static get interGray90001 => TextStyle(
        color: appTheme.gray90001.withOpacity(0.56),
        fontSize: 3.fSize,
        fontWeight: FontWeight.w400,
      ).inter;
  static get interGray90001SemiBold => TextStyle(
        color: appTheme.gray90001.withOpacity(0.64),
        fontSize: 3.fSize,
        fontWeight: FontWeight.w600,
      ).inter;
  static get interPrimary => TextStyle(
        color: theme.colorScheme.primary,
        fontSize: 3.fSize,
        fontWeight: FontWeight.w500,
      ).inter;
  static get interPrimaryContainer => TextStyle(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontSize: 3.fSize,
        fontWeight: FontWeight.w600,
      ).inter;
  static get interPrimaryContainerSemiBold => TextStyle(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontSize: 2.fSize,
        fontWeight: FontWeight.w600,
      ).inter;
  static get interPrimaryContainerSemiBold7 => TextStyle(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontSize: 7.fSize,
        fontWeight: FontWeight.w600,
      ).inter;
  static get interPrimaryMedium => TextStyle(
        color: theme.colorScheme.primary,
        fontSize: 2.fSize,
        fontWeight: FontWeight.w500,
      ).inter;
  static get interPrimaryMedium3 => TextStyle(
        color: theme.colorScheme.primary,
        fontSize: 3.fSize,
        fontWeight: FontWeight.w500,
      ).inter;
  static get interPrimaryMedium3_1 => TextStyle(
        color: theme.colorScheme.primary,
        fontSize: 3.fSize,
        fontWeight: FontWeight.w500,
      ).inter;
  static get interPrimarySemiBold => TextStyle(
        color: theme.colorScheme.primary,
        fontSize: 3.fSize,
        fontWeight: FontWeight.w600,
      ).inter;
  // Label text style
  static get labelLargeBlack900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.56),
        fontWeight: FontWeight.w600,
      );
  static get labelLargeBlack900Medium => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.6),
        fontWeight: FontWeight.w500,
      );
  static get labelLargeGray50003 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray50003,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeInter => theme.textTheme.labelLarge!.inter.copyWith(
        fontSize: 13.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeInterBlack900 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appTheme.black900.withOpacity(0.56),
        fontSize: 13.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeInterBlack900Medium =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appTheme.black900.withOpacity(0.49),
        fontWeight: FontWeight.w500,
      );
  static get labelLargeInterBlack900Medium13 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appTheme.black900.withOpacity(0.3),
        fontSize: 13.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeInterBlack900Medium_1 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appTheme.black900.withOpacity(0.53),
        fontWeight: FontWeight.w500,
      );
  static get labelLargeInterBlack900Medium_2 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appTheme.black900.withOpacity(0.56),
        fontWeight: FontWeight.w500,
      );
  static get labelLargeInterBlack900Medium_3 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appTheme.black900.withOpacity(0.3),
        fontWeight: FontWeight.w500,
      );
  static get labelLargeInterBlueA400 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appTheme.blueA400,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeInterBluegray400 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appTheme.blueGray400,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeInterMedium =>
      theme.textTheme.labelLarge!.inter.copyWith(
        fontSize: 13.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeInterMedium_1 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get labelLargeInterMedium_2 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get labelLargeInterPrimary =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeInterPrimaryContainer =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get labelLargeInterSemiBold =>
      theme.textTheme.labelLarge!.inter.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get labelLargeInter_1 => theme.textTheme.labelLarge!.inter;
  static get labelLargePrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get labelLargePrimaryContainer => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontWeight: FontWeight.w500,
      );
  static get labelLargeSFProTextBlack900 =>
      theme.textTheme.labelLarge!.sFProText.copyWith(
        color: appTheme.black900.withOpacity(0.4),
        fontWeight: FontWeight.w600,
      );
  static get labelLargeSemiBold => theme.textTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get labelLargeTitilliumWeb =>
      theme.textTheme.labelLarge!.titilliumWeb.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get labelMediumBlack900 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.black900,
      );
  static get labelMediumBlack90011 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.64),
        fontSize: 11.fSize,
      );
  static get labelMediumBlack90011_1 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.7),
        fontSize: 11.fSize,
      );
  static get labelMediumBlack900Bold => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.56),
        fontWeight: FontWeight.w700,
      );
  static get labelMediumBlack900SemiBold =>
      theme.textTheme.labelMedium!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumBlack900_1 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.56),
      );
  static get labelMediumBlueA400 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.blueA400.withOpacity(0.6),
      );
  static get labelMediumBlueA400_1 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.blueA400.withOpacity(0.64),
      );
  static get labelMediumGray50005 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray50005,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumMontserratPrimaryContainer =>
      theme.textTheme.labelMedium!.montserrat.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontSize: 11.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumPrimary => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get labelMediumProximaNovaPrimaryContainer =>
      theme.textTheme.labelMedium!.proximaNova.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontSize: 11.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumTitilliumWebBlack900 =>
      theme.textTheme.labelMedium!.titilliumWeb.copyWith(
        color: appTheme.black900.withOpacity(0.6),
        fontWeight: FontWeight.w600,
      );
  static get labelSmall8 => theme.textTheme.labelSmall!.copyWith(
        fontSize: 8.fSize,
      );
  static get labelSmallLexendBlack900 =>
      theme.textTheme.labelSmall!.lexend.copyWith(
        color: appTheme.black900.withOpacity(0.53),
        fontSize: 8.fSize,
        fontWeight: FontWeight.w500,
      );
  // Montserrat text style
  static get montserratPrimaryContainer => TextStyle(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontSize: 2.fSize,
        fontWeight: FontWeight.w600,
      ).montserrat;
  // Proxima text style
  static get proximaNovaPrimaryContainer => TextStyle(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontSize: 2.fSize,
        fontWeight: FontWeight.w600,
      ).proximaNova;
  // Title text style
  static get titleLargeBlack900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.6),
        fontWeight: FontWeight.w600,
      );
  static get titleLargeBlack900SemiBold => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeBlack900SemiBold_1 =>
      theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.64),
        fontWeight: FontWeight.w600,
      );
  static get titleLargeBlack900_1 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
      );
  static get titleLargeBlack900_2 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.64),
      );
  static get titleLargeLexendBlack900 =>
      theme.textTheme.titleLarge!.lexend.copyWith(
        color: appTheme.black900.withOpacity(0.53),
        fontWeight: FontWeight.w400,
      );
  static get titleLargePrimaryContainer => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get titleLargeTitilliumWebBlack900 =>
      theme.textTheme.titleLarge!.titilliumWeb.copyWith(
        color: appTheme.black900,
        fontSize: 22.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMedium17 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 17.fSize,
      );
  static get titleMedium18 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
      );
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.53),
        fontWeight: FontWeight.w500,
      );
  static get titleMediumBlack900Bold => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.64),
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBlack900Medium => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.56),
        fontWeight: FontWeight.w500,
      );
  static get titleMediumBlack900_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.56),
      );
  static get titleMediumBlack900_2 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.64),
      );
  static get titleMediumGray700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray700,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumLexend => theme.textTheme.titleMedium!.lexend.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleMediumLexendBlack900 =>
      theme.textTheme.titleMedium!.lexend.copyWith(
        color: appTheme.black900.withOpacity(0.6),
      );
  static get titleMediumLexendBlack900Medium =>
      theme.textTheme.titleMedium!.lexend.copyWith(
        color: appTheme.black900.withOpacity(0.56),
        fontWeight: FontWeight.w500,
      );
  static get titleMediumLexendBlack900Medium_1 =>
      theme.textTheme.titleMedium!.lexend.copyWith(
        color: appTheme.black900.withOpacity(0.53),
        fontWeight: FontWeight.w500,
      );
  static get titleMediumLexendBlack900Medium_2 =>
      theme.textTheme.titleMedium!.lexend.copyWith(
        color: appTheme.black900.withOpacity(0.6),
        fontWeight: FontWeight.w500,
      );
  static get titleMediumLexendBlack900Medium_3 =>
      theme.textTheme.titleMedium!.lexend.copyWith(
        color: appTheme.black900.withOpacity(0.49),
        fontWeight: FontWeight.w500,
      );
  static get titleMediumLexendBold =>
      theme.textTheme.titleMedium!.lexend.copyWith(
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumLexendPrimaryContainer =>
      theme.textTheme.titleMedium!.lexend.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontSize: 18.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumLexendPrimaryContainerMedium =>
      theme.textTheme.titleMedium!.lexend.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontSize: 17.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumLexend_1 => theme.textTheme.titleMedium!.lexend;
  static get titleMediumMedium => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleMediumMedium18 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumMedium_1 => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleMediumMedium_2 => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPrimary_1 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMediumProximaNovaBlack900 =>
      theme.textTheme.titleMedium!.proximaNova.copyWith(
        color: appTheme.black900.withOpacity(0.64),
      );
  static get titleMediumProximaNovaBlack900_1 =>
      theme.textTheme.titleMedium!.proximaNova.copyWith(
        color: appTheme.black900.withOpacity(0.56),
      );
  static get titleMediumTitilliumWeb =>
      theme.textTheme.titleMedium!.titilliumWeb;
  static get titleMediumTitilliumWebBlack900 =>
      theme.textTheme.titleMedium!.titilliumWeb.copyWith(
        color: appTheme.black900.withOpacity(0.64),
      );
  static get titleMediumTitilliumWebBlueA400 =>
      theme.textTheme.titleMedium!.titilliumWeb.copyWith(
        color: appTheme.blueA400,
      );
  static get titleSmallBlack900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900.withOpacity(0.53),
        fontWeight: FontWeight.w600,
      );
  static get titleSmallBlack900Medium => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900.withOpacity(0.49),
        fontWeight: FontWeight.w500,
      );
  static get titleSmallBlack900Medium15 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallBlack900Medium15_1 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900.withOpacity(0.49),
        fontSize: 15.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallBlack900Medium15_2 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900.withOpacity(0.6),
        fontSize: 15.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallBlack900Medium_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallBlack900Medium_2 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900.withOpacity(0.6),
        fontWeight: FontWeight.w500,
      );
  static get titleSmallBlack900Medium_3 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900.withOpacity(0.6),
        fontWeight: FontWeight.w500,
      );
  static get titleSmallBlack900SemiBold => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallBlack900SemiBold_1 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallBlack900SemiBold_2 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallBlack900SemiBold_3 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900.withOpacity(0.53),
        fontWeight: FontWeight.w600,
      );
  static get titleSmallBlack900_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
      );
  static get titleSmallGray10099 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray10099,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallGray700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray700,
      );
  static get titleSmallGray90001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray90001.withOpacity(0.64),
        fontSize: 15.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallGray90002 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray90002,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallLexend => theme.textTheme.titleSmall!.lexend.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleSmallLexendBlack900 =>
      theme.textTheme.titleSmall!.lexend.copyWith(
        color: appTheme.black900.withOpacity(0.56),
        fontWeight: FontWeight.w600,
      );
  static get titleSmallLexendBlack90015 =>
      theme.textTheme.titleSmall!.lexend.copyWith(
        color: appTheme.black900,
        fontSize: 15.fSize,
      );
  static get titleSmallLexendPrimary =>
      theme.textTheme.titleSmall!.lexend.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallLexendPrimaryContainer =>
      theme.textTheme.titleSmall!.lexend.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontWeight: FontWeight.w500,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallPrimaryContainer => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get titleSmallPrimaryContainerSemiBold =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get titleSmallPrimaryMedium => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallPrimaryMedium15 => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallPrimaryMedium_1 => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallPrimarySemiBold => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallPrimary_1 => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleSmallProximaNovaPrimaryContainer =>
      theme.textTheme.titleSmall!.proximaNova.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallSemiBold => theme.textTheme.titleSmall!.copyWith(
        fontSize: 15.fSize,
        fontWeight: FontWeight.w600,
      );
}

extension on TextStyle {
  TextStyle get lexend {
    return copyWith(
      fontFamily: 'Lexend',
    );
  }

  TextStyle get proximaNova {
    return copyWith(
      fontFamily: 'Proxima Nova',
    );
  }

  TextStyle get titilliumWeb {
    return copyWith(
      fontFamily: 'Titillium Web',
    );
  }

  TextStyle get montserrat {
    return copyWith(
      fontFamily: 'Montserrat',
    );
  }

  TextStyle get sFProText {
    return copyWith(
      fontFamily: 'SF Pro Text',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }
}

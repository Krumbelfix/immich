import 'package:flutter/material.dart';
import 'package:immich_mobile/domain/models/store.model.dart';
import 'package:immich_mobile/presentation/theme/app_theme.dart';

// AppSetting needs to store UI specific settings as well as domain specific settings
// This model is the only exclusion which refers to entities from the presentation layer
// as well as the domain layer
enum AppSetting<T> {
  appTheme<AppTheme>._(StoreKey.appTheme, AppTheme.blue),
  themeMode<ThemeMode>._(StoreKey.themeMode, ThemeMode.system),
  darkMode<bool>._(StoreKey.darkMode, false);

  const AppSetting._(this.storeKey, this.defaultValue);

  // ignore: avoid-dynamic
  final StoreKey<T, dynamic> storeKey;
  final T defaultValue;
}
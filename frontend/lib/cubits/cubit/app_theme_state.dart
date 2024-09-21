part of 'app_theme_cubit.dart';

@immutable
sealed class AppThemeState {}

final class LightMode extends AppThemeState {}

final class DarkMode extends AppThemeState {}

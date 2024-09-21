import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'app_theme_state.dart';

class AppThemeCubit extends Cubit<AppThemeState> {
  AppThemeCubit() : super(LightMode());

  void toggleTheme() {
    (state is LightMode) ? emit(DarkMode()) : emit(LightMode());
  }
}

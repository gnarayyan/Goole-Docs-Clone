import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_docs_clone/core/themes/theme_data.dart';
import 'package:google_docs_clone/cubits/cubit/app_theme_cubit.dart';

import 'screens/login_screen.dart';

void main() {
  runApp(
    BlocProvider(
      create: (context) => AppThemeCubit(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppThemeCubit, AppThemeState>(
      builder: (context, state) {
        return MaterialApp(
          title: 'Google Docs',
          theme: (state is LightMode)
              ? AppThemeData.lightTheme
              : AppThemeData.darkTheme,
          debugShowCheckedModeBanner: false,
          home: const LoginScreen(),
        );
      },
    );
  }
}

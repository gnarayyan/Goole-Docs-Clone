import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_docs_clone/cubits/cubit/app_theme_cubit.dart';

import '../repository/auth_repository.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final appThemeCubit = BlocProvider.of<AppThemeCubit>(context);
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              appThemeCubit.toggleTheme();
            },
            icon: BlocBuilder<AppThemeCubit, AppThemeState>(
              builder: (context, state) {
                if (state is LightMode) return const Icon(Icons.light_mode);
                return const Icon(Icons.dark_mode);
              },
            ),
          ),
        ],
      ),
      body: Center(
        child: ElevatedButton.icon(
          onPressed: () {
            AuthRepository.signInWithGoogle();
          },
          icon: Image.asset(
            'assets/icons/google_logo_icon_48x48.png',
            height: 50,
          ),
          label: Text(
            'Login with Google',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18,
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
        ),
      ),
    );
  }
}

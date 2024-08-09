import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/resources/cubit/auth/auth_cubit.dart';
import 'package:oepay/resources/cubit/menu/menu_cubit.dart';
import 'package:oepay/resources/cubit/pages_menu/pages_cubit.dart';
import 'pages/splash_screen_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthCubit>(create: (context) => AuthCubit()),
        BlocProvider<MenuCubit>(create: (context) => MenuCubit()),
        BlocProvider<PagesCubit>(create: (context) => PagesCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          splashColor: ColorName.light,
          inputDecorationTheme: const InputDecorationTheme(
            focusColor: Colors.black45,
            labelStyle: TextStyle(color: Colors.black54),
          ),
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
            shape: CircleBorder(),
          ),
        ),
        home: const SplashScreen(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'features/auth/bloc/login_bloc.dart';
import 'features/auth/login_screen.dart';
import 'bloc_screens/bloc/counter_bloc.dart';
import 'utils/app_themes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ///
    ///
    ///
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CounterBloc()),
        BlocProvider(create: (context) => LoginBloc()),
      ],
      child: MaterialApp(
        theme: AppThemes.lightTheme,

        // darkTheme: AppThemes.lightTheme,
        home: LoginScreen(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ios_fl_n_novascotia_3443/cubit/nova_scotia_places_cubit.dart';
import 'package:ios_fl_n_novascotia_3443/pages/loading_screen/loading_screen.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NovaScotiaPlacesCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Color(0xFF153A77),
          appBarTheme: AppBarTheme(color: Color(0xFF153A77)),
        ),
        home: LoadingScreen(),
      ),
    );
  }
}

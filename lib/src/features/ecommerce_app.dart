import 'package:coditron_app/src/features/home/data/home_respository.dart';
import 'package:coditron_app/src/features/home/screens/cubits/home_cubit.dart';
import 'package:coditron_app/src/features/home/screens/retail_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EcommerceApp extends StatelessWidget {
  const EcommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => HomeRepository(),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => HomeCubit(
              homeRepository: context.read<HomeRepository>(),
            ),
          )
        ],
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: RetailPage(),
        ),
      ),
    );
  }
}

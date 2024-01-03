import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/services/dependency_injection.dart';
import 'core/utils/helpers/app_router.dart';
import 'features/home/presentation/controllers/home_cubit.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => HomeCubit(sl())..getHomeProducts()),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        title: 'Mnjz Task',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: const ColorScheme.light(),
          useMaterial3: true,
        ),
      ),
    );
  }
}

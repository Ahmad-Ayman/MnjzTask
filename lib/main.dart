import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:isar/isar.dart';

import 'app.dart';
import 'core/services/dependency_injection.dart';
import 'core/utils/helpers/bloc_observer.dart';
import 'features/home/data/models/local_product_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  await ServicesLocator().init();

  runApp(const MyApp());
}

import 'dart:io';

import 'package:ai_mushroom/features/mushroom_pred/data/datasources/remote_data_source.dart';
import 'package:ai_mushroom/features/mushroom_pred/data/repositories/mushroom_repository_impl.dart';
import 'package:ai_mushroom/features/mushroom_pred/domain/repositories/mushroom_repository.dart';
import 'package:ai_mushroom/features/mushroom_pred/domain/usecases/get_prediction.dart';
import 'package:ai_mushroom/features/mushroom_pred/presentation/bloc/mushroom_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:http/io_client.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Bloc
  sl.registerFactory(() => MushroomBloc(getPrediction: sl()));

  // Use cases
  sl.registerLazySingleton(() => GetPrediction(sl()));

  // Repository
  sl.registerLazySingleton<MushroomRepository>(() => MushroomRepositoryImpl(dataSource: sl()));

  // Data sources
  sl.registerLazySingleton<RemoteDataSource>(() => RemoteDataSourceImpl(http: sl()));

  // External
  // sl.registerLazySingleton(() => http.Client());
  final ioc = HttpClient();
  ioc.badCertificateCallback = (X509Certificate cert, String host, int port) => true;
  final http = IOClient(ioc);
  sl.registerLazySingleton(() => http);
}
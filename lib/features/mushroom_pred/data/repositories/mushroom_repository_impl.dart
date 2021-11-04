import 'package:ai_mushroom/core/error/exceptions.dart';
import 'package:ai_mushroom/core/error/failures.dart';
import 'package:ai_mushroom/features/mushroom_pred/data/datasources/remote_data_source.dart';
import 'package:ai_mushroom/features/mushroom_pred/domain/entities/mushroom_info.dart';
import 'package:ai_mushroom/features/mushroom_pred/domain/repositories/mushroom_repository.dart';
import 'package:dartz/dartz.dart';

class MushroomRepositoryImpl implements MushroomRepository {
  final RemoteDataSource dataSource;

  MushroomRepositoryImpl({required this.dataSource});


  @override
  Future<Either<Failure, MushroomInfo>> getPrediction(Map<String, dynamic> givenJson) async {
    try {
      final result = await dataSource.getPrediction(givenJson);

      return Right(result);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
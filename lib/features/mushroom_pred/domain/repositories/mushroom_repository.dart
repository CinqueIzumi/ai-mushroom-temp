import 'package:ai_mushroom/core/error/failures.dart';
import 'package:ai_mushroom/features/mushroom_pred/domain/entities/mushroom_info.dart';
import 'package:dartz/dartz.dart';

abstract class MushroomRepository {
  Future<Either<Failure, MushroomInfo>> getPrediction(Map<String, dynamic> givenJson);
}
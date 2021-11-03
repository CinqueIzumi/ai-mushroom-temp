import 'package:ai_mushroom/core/error/failures.dart';
import 'package:ai_mushroom/features/mushroom_pred/domain/entities/mushroom_input.dart';
import 'package:ai_mushroom/features/mushroom_pred/domain/entities/prediction.dart';
import 'package:dartz/dartz.dart';

abstract class PredictionRepository {
  Future<Either<Failure, PredictionEntity>> getPrediction(MushroomInput input);
}
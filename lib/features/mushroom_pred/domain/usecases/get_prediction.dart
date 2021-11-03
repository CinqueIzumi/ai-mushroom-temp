import 'package:ai_mushroom/core/error/failures.dart';
import 'package:ai_mushroom/features/mushroom_pred/domain/entities/mushroom_input.dart';
import 'package:ai_mushroom/features/mushroom_pred/domain/repositories/prediction_repository.dart';
import 'package:dartz/dartz.dart';

class GetPrediction {
  final PredictionRepository repository;

  GetPrediction({required this.repository});

  Future<Either<Failure, bool>> call(MushroomInput input) async {
    return await repository.getPrediction(input);
  }
}

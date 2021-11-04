import 'package:ai_mushroom/core/error/failures.dart';
import 'package:ai_mushroom/features/mushroom_pred/domain/entities/mushroom_info.dart';
import 'package:ai_mushroom/features/mushroom_pred/domain/repositories/mushroom_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class GetPrediction {
  final MushroomRepository repository;

  GetPrediction(this.repository);

  Future<Either<Failure, MushroomInfo>> call(Params params) async {
    return await repository.getPrediction(params.json);
  }
}

class Params extends Equatable {
  final Map<String, dynamic> json;

  const Params({required this.json}) : super();

  @override
  List<Object?> get props => [json];
}
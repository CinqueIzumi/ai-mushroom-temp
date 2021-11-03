import 'package:equatable/equatable.dart';

class PredictionEntity extends Equatable {
  final bool poisonous;

  const PredictionEntity({required this.poisonous});

  @override
  List<Object?> get props => [poisonous];
}
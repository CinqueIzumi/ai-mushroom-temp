import 'package:equatable/equatable.dart';

class MushroomInfo extends Equatable {
  final bool poisonous;

  const MushroomInfo({required this.poisonous}) : super();

  @override
  List<Object?> get props => [poisonous];
}
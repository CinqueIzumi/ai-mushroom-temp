part of 'mushroom_bloc.dart';

@immutable
abstract class MushroomState extends Equatable {
  @override
  List<Object> get props => [];
}

class MushroomInitial extends MushroomState {}

class LoadingState extends MushroomState {}

class LoadedState extends MushroomState {
  final MushroomInfo model;

  LoadedState({required this.model});
}

class ErrorState extends MushroomState {
  final Failure failure;

  ErrorState({required this.failure});
}
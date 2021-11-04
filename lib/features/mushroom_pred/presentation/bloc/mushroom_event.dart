part of 'mushroom_bloc.dart';

abstract class MushroomEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class RequestMushroomInfo extends MushroomEvent {
  final Map<String, String> json;

  RequestMushroomInfo({required this.json});
}
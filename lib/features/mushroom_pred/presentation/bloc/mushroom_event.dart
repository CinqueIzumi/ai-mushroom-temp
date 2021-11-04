part of 'mushroom_bloc.dart';

abstract class MushroomEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class RequestMushroomInfo extends MushroomEvent {
  final Map<String, dynamic> json;

  RequestMushroomInfo({required this.json});
}
import 'package:ai_mushroom/features/mushroom_pred/domain/entities/mushroom_info.dart';

class MushroomInfoModel extends MushroomInfo {
  const MushroomInfoModel({required bool poison}) : super(poisonous: poison);

  factory MushroomInfoModel.fromJson(Map<String, dynamic> json) {
    return MushroomInfoModel(poison: json['poisonous']);
  }

  Map<String, dynamic> toJson() {
    return {
      'poisonous': poisonous
    };
  }

  @override
  List<Object?> get props => [poisonous];
}
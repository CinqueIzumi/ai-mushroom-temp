import 'package:ai_mushroom/features/mushroom_pred/domain/entities/mushroom_info.dart';

class MushroomInfoModel extends MushroomInfo {
  const MushroomInfoModel({required bool poison}) : super(poisonous: poison);

  factory MushroomInfoModel.fromResponse(String response) {
    bool poisonous = false;

    if(response == 'This mushroom has been classified as poisonous') {
      poisonous = true;
    }
    return MushroomInfoModel(poison: poisonous);
  }

  Map<String, dynamic> toJson() {
    return {
      'poisonous': poisonous
    };
  }

  @override
  List<Object?> get props => [poisonous];
}
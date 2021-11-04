import 'package:ai_mushroom/features/mushroom_pred/data/models/mushroom_info_model.dart';
import 'package:ai_mushroom/features/mushroom_pred/domain/entities/mushroom_info.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const tMushroomInfoModel = MushroomInfoModel(poison: true);

  test('should be a subclass of MushroomInfo Entity', () {
    // assert
    expect(tMushroomInfoModel, isA<MushroomInfo>());
  });

  group('fromJson', () {
    test('should return a valid model using json', () {
      // arrange
      const String response = 'This mushroom has been classified as poisonous';

      // act
      final result = MushroomInfoModel.fromResponse(response);

      // assert
      expect(result, tMushroomInfoModel);
    });
  });

  group('toJson', () {
    test('should return a JSON map containing the proper data', () {
      // act
      final result = tMushroomInfoModel.toJson();

      // assert
      final expectedMap = {
        "poisonous": true
      };

      expect(result, expectedMap);
    });
  });
}
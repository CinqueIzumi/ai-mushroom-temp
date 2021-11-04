import 'dart:convert';

import 'package:ai_mushroom/features/mushroom_pred/data/models/mushroom_info_model.dart';
import 'package:ai_mushroom/features/mushroom_pred/domain/entities/mushroom_info.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  const tMushroomInfoModel = MushroomInfoModel(poison: false);

  test('should be a subclass of MushroomInfo Entity', () {
    // assert
    expect(tMushroomInfoModel, isA<MushroomInfo>());
  });

  group('fromJson', () {
    test('should return a valid model using json', () {
      // arrange
      final Map<String, dynamic> jsonMap = json.decode(fixture('edible_info_return.json'));

      // act
      final result = MushroomInfoModel.fromResponse(jsonMap);

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
        "poisonous": false
      };

      expect(result, expectedMap);
    });
  });
}
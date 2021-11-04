import 'package:ai_mushroom/core/error/exceptions.dart';
import 'package:ai_mushroom/core/utils/constants.dart';
import 'package:ai_mushroom/features/mushroom_pred/data/models/mushroom_info_model.dart';
import 'dart:convert';

import 'package:http/io_client.dart';

abstract class RemoteDataSource {
  Future<MushroomInfoModel> getPrediction(Map<String, dynamic> givenJson);
}

class RemoteDataSourceImpl implements RemoteDataSource {
  final IOClient http;

  RemoteDataSourceImpl({required this.http});

  @override
  Future<MushroomInfoModel> getPrediction(
      Map<String, dynamic> givenJson) async {
    var newJson = json.encode(givenJson);

    final response = await http.post(
      Uri.parse(apiUrl),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: newJson,
    );

    if (response.statusCode == 200) {
      return MushroomInfoModel.fromResponse(response.body);
    } else {
      throw ServerException();
    }
  }
}

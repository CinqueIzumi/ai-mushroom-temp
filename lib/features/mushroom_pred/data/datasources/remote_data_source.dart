import 'package:ai_mushroom/core/error/exceptions.dart';
import 'package:ai_mushroom/core/utils/constants.dart';
import 'package:ai_mushroom/features/mushroom_pred/data/models/mushroom_info_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

abstract class RemoteDataSource {
  Future<MushroomInfoModel> getPrediction(Map<String, dynamic> givenJson);
}

class RemoteDataSourceImpl implements RemoteDataSource {
  final http.Client client;

  RemoteDataSourceImpl({required this.client});

  @override
  Future<MushroomInfoModel> getPrediction(Map<String, dynamic> givenJson) async {
    final response = await client.post(
      Uri.parse(apiUrl),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: givenJson,
    );

    if(response.statusCode == 200) {
      return MushroomInfoModel.fromJson(json.decode(response.body));
    } else {
      throw ServerException();
    }
  }
}

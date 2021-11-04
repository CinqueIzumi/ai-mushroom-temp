import 'dart:io';

import 'package:ai_mushroom/core/error/exceptions.dart';
import 'package:ai_mushroom/core/utils/constants.dart';
import 'package:ai_mushroom/features/mushroom_pred/data/models/mushroom_info_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:http/io_client.dart';

abstract class RemoteDataSource {
  Future<MushroomInfoModel> getPrediction(Map<String, dynamic> givenJson);
}

class RemoteDataSourceImpl implements RemoteDataSource {
  final http.Client client;

  RemoteDataSourceImpl({required this.client});

  @override
  Future<MushroomInfoModel> getPrediction(
      Map<String, dynamic> givenJson) async {
    final ioc = HttpClient();
    ioc.badCertificateCallback =
        (X509Certificate cert, String host, int port) => true;
    final http = IOClient(ioc);

    var newJson = json.encode(givenJson);

    final response = await http.post(
      Uri.parse(apiUrl),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: newJson,
    );

    print('given json: ${response.body}');
    if (response.statusCode == 200) {
      return MushroomInfoModel.fromResponse(response.body);
    } else {
      throw ServerException();
    }
  }
}

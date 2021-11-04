import 'dart:convert';

import 'package:ai_mushroom/core/error/exceptions.dart';
import 'package:ai_mushroom/core/utils/constants.dart';
import 'package:ai_mushroom/features/mushroom_pred/data/datasources/remote_data_source.dart';
import 'package:ai_mushroom/features/mushroom_pred/data/models/mushroom_info_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:http/http.dart' as http;

import '../../../../fixtures/fixture_reader.dart';

class MockHttpClient extends Mock implements http.Client {}

void main() {
  late RemoteDataSourceImpl dataSourceImpl;
  late MockHttpClient mockHttpClient;

  setUp(() {
    mockHttpClient = MockHttpClient();
    dataSourceImpl = RemoteDataSourceImpl(client: mockHttpClient);
    registerFallbackValue(Uri.parse(apiUrl));
  });

  final mockHeaders = <String, String>{
    'Content-Type': 'application/json; charset=UTF-8',
  };

  final tJson = json.decode(fixture('poisonous_info.json'));

  void setUpClientSuccess200() {
    when(() => mockHttpClient.post(Uri.parse(apiUrl), headers: mockHeaders, body: tJson))
        .thenAnswer((_) async =>
            http.Response(fixture('poisonous_info_return.json'), 200));
  }

  void setUpClientFailure404() {
    when(() => mockHttpClient.post(Uri.parse(apiUrl), headers: mockHeaders, body: tJson))
        .thenAnswer((_) async => http.Response('Something went wrong', 404));
  }

  group('getPrediction', () {
    final tMushroomInfo = MushroomInfoModel.fromResponse(
        json.decode(fixture('poisonous_info_return.json')));

    test(
        'Should perform a POST request on an URL with the json and with a application/json header',
        () async {
      // arrange
      setUpClientSuccess200();

      // act
      dataSourceImpl.getPrediction(tJson);

      // assert
      verify(() => mockHttpClient.post(
            Uri.parse(apiUrl),
            headers: mockHeaders,
            body: tJson,
          ));
    });

    test('Should return MushroomInfoModel when the response code is 200 (success)', () async {
      // arrange
      setUpClientSuccess200();

      // act
      final result = await dataSourceImpl.getPrediction(tJson);

      // assert
      expect(result, tMushroomInfo);
    });

    test('Should throw a ServerException when the response code is 404 or other', () async {
      // arrange
      setUpClientFailure404();

      // act
      final call = dataSourceImpl.getPrediction;

      // assert
      expect(() => call(tJson), throwsA(isA<ServerException>()));
    });
  });
}

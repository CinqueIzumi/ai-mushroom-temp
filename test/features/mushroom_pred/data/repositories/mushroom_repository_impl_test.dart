import 'package:ai_mushroom/core/error/exceptions.dart';
import 'package:ai_mushroom/core/error/failures.dart';
import 'package:ai_mushroom/features/mushroom_pred/data/datasources/remote_data_source.dart';
import 'package:ai_mushroom/features/mushroom_pred/data/models/mushroom_info_model.dart';
import 'package:ai_mushroom/features/mushroom_pred/data/repositories/mushroom_repository_impl.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockDataSource extends Mock implements RemoteDataSource {}

void main() {
  late MushroomRepositoryImpl repository;
  late MockDataSource mockDataSource;

  setUp(() {
    mockDataSource = MockDataSource();
    repository = MushroomRepositoryImpl(dataSource: mockDataSource);
  });

  const tMushroomInfoModel = MushroomInfoModel(poison: true);
  const dummyJson = {
    "poisonous": true
  };

  group('getPrediction', () {

    test('Should return remote data when the call to the remote data source is successful', () async {
      // arrange
      when(() => mockDataSource.getPrediction(any())).thenAnswer((_) async => tMushroomInfoModel);

      // act
      final result = await repository.getPrediction(dummyJson);

      // assert
      verify(() => mockDataSource.getPrediction(dummyJson));
      expect(result, equals(const Right(tMushroomInfoModel)));
    });

    test('Should return a server failure when the call to the remote data source is unsuccessful', () async {
      // arrange
      when(() => mockDataSource.getPrediction(any())).thenThrow(ServerException());

      // act
      final result = await repository.getPrediction(dummyJson);

      // assert
      verify(() => mockDataSource.getPrediction(dummyJson));
      expect(result, equals(Left(ServerFailure())));
    });
  });
}
import 'package:ai_mushroom/features/mushroom_pred/domain/entities/mushroom_input.dart';
import 'package:ai_mushroom/features/mushroom_pred/domain/repositories/prediction_repository.dart';
import 'package:ai_mushroom/features/mushroom_pred/domain/usecases/get_prediction.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockPredictionRepository extends Mock implements PredictionRepository {}

class FakeMushroomInput extends Fake implements MushroomInput {}

void main() {
  late GetPrediction usecase;
  late MockPredictionRepository mockPredictionRepository;
  FakeMushroomInput mushroomInput = FakeMushroomInput();
  
  setUp(() {
    registerFallbackValue(FakeMushroomInput());
    mockPredictionRepository = MockPredictionRepository();
    usecase = GetPrediction(repository: mockPredictionRepository);
  });

  
  test('should get the prediction directly from the repository with no further interactions', () async {
    // arrange
    when(() => mockPredictionRepository.getPrediction(mushroomInput)).thenAnswer((_) async => const Right(true));
    
    // act
    final result = await usecase(mushroomInput);
    
    // assert
    expect(result, const Right(true));
    verify(() => mockPredictionRepository.getPrediction(any())).called(1);
    verifyNoMoreInteractions(mockPredictionRepository);
  });
}
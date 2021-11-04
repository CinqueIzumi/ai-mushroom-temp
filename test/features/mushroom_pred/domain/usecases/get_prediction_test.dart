import 'package:ai_mushroom/features/mushroom_pred/domain/entities/mushroom_info.dart';
import 'package:ai_mushroom/features/mushroom_pred/domain/repositories/mushroom_repository.dart';
import 'package:ai_mushroom/features/mushroom_pred/domain/usecases/get_prediction.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockMushroomRepository extends Mock implements MushroomRepository {}

void main() {
  late GetPrediction usecase;
  late MockMushroomRepository mockMushroomRepository;

  setUp(() {
    mockMushroomRepository = MockMushroomRepository();
    usecase = GetPrediction(mockMushroomRepository);
  });

  const tMushroomInfo = MushroomInfo(poisonous: true);
  final Map<String, dynamic> givenJson = {
    "cap-shape": ["x"],
    "cap-surface": ["s"],
    "cap-color": ["n"],
    "bruises": ["t"],
    "odor": ["p"],
    "gill-attachment": ["f"],
    "gill-spacing": ["c"],
    "gill-size": ["n"],
    "gill-color": ["k"],
    "stalk-shape": ["e"],
    "stalk-root": ["e"],
    "stalk-surface-above-ring": ["s"],
    "stalk-surface-below-ring": ["s"],
    "stalk-color-above-ring": ["w"],
    "stalk-color-below-ring": ["w"],
    "veil-type": ["p"],
    "veil-color": ["w"],
    "ring-number": ["o"],
    "ring-type": ["p"],
    "spore-print-color": ["k"],
    "population": ["s"],
    "habitat": ["u"]
  };

  test('should get the information for the given json from the repository ', () async {
    // arrange
    when(() => mockMushroomRepository.getPrediction(any())).thenAnswer((_) async => const Right(tMushroomInfo));

    // act
    final result = await usecase(Params(json: givenJson));

    // assert
    expect(result, const Right(tMushroomInfo));
    verify(() => mockMushroomRepository.getPrediction(givenJson));
    verifyNoMoreInteractions(mockMushroomRepository);
  });
}
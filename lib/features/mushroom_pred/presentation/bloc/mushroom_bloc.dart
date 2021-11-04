import 'package:ai_mushroom/core/error/failures.dart';
import 'package:ai_mushroom/features/mushroom_pred/domain/entities/mushroom_info.dart';
import 'package:ai_mushroom/features/mushroom_pred/domain/usecases/get_prediction.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'mushroom_event.dart';

part 'mushroom_state.dart';

class MushroomBloc extends Bloc<MushroomEvent, MushroomState> {
  final GetPrediction getPred;

  MushroomBloc({required GetPrediction getPrediction})
      : getPred = getPrediction,
        super(MushroomInitial()) {
    on<MushroomEvent>((event, emit) async {
      if (event is RequestMushroomInfo) {
        emit(LoadingState());
        final mushroomInfo = await getPred(Params(json: event.json));

        emit(
          mushroomInfo.fold(
            (failure) => ErrorState(failure: failure),
            (givenInfo) => LoadedState(model: givenInfo),
          ),
        );
      }
    });
  }
}

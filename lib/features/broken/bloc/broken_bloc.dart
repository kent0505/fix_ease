import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/db/db.dart';
import '../../../core/models/broken.dart';

part 'broken_event.dart';
part 'broken_state.dart';

class BrokenBloc extends Bloc<BrokenEvent, BrokenState> {
  BrokenBloc() : super(BrokenInitial()) {
    on<GetBrokenEvent>((event, emit) async {
      if (DB.brokensList.isEmpty) {
        await getModels();

        emit(BrokenLoadedState(brokens: DB.brokensList));
      } else {
        emit(BrokenLoadedState(brokens: DB.brokensList));
      }
    });

    on<AddBrokenEvent>((event, emit) async {
      // DB.brokensList.insert(0, event.test);
      DB.brokensList.add(event.broken);
      await updateModels();

      emit(BrokenLoadedState(brokens: DB.brokensList));
    });

    on<EditBrokenEvent>((event, emit) async {
      for (Broken test in DB.brokensList) {
        if (test.id == event.broken.id) {
          test.title = event.broken.title;
        }
      }
      await updateModels();

      emit(BrokenLoadedState(brokens: DB.brokensList));
    });

    on<DeleteBrokenEvent>((event, emit) async {
      DB.brokensList.removeWhere((element) => element.id == event.id);
      await updateModels();

      emit(BrokenLoadedState(brokens: DB.brokensList));
    });
  }
}

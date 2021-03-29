import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/interfaces/coctail_repository_interface.dart';
import 'detail_page_states.dart';

class DetailPageVm extends StateNotifier<DetailPageState> {
  final CoktailRepositoryInterface _coktailRepositoryInterface;
  DetailPageVm(this._coktailRepositoryInterface) : super(DetailPageInitial());

  void getDrinkById(String drinkId) async {
    try {
      state = DetailPageLoading();
      var drink = await _coktailRepositoryInterface.getCoktailById(drinkId);
      state = DetailPageLoaded(drink);
    } catch (e) {
      state = DetailPageError(error: e.toString());
    }
  }
}

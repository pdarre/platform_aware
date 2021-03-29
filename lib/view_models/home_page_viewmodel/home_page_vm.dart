import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/interfaces/coctail_repository_interface.dart';
import 'home_page_states.dart';

class HomePageVm extends StateNotifier<HomePageState> {
  final CoktailRepositoryInterface _coktailRepositoryInterface;
  HomePageVm(this._coktailRepositoryInterface) : super(HomePageInitial());

  void getAllDrinks() async {
    try {
      state = HomePageLoading();
      var drinkList = await _coktailRepositoryInterface.getAllCoktails();
      state = HomePageLoaded(drinkList);
    } catch (e) {
      state = HomePageError(error: e.toString());
    }
  }
}

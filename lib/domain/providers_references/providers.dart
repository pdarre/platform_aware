import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../view_models/detail_page_viewmodel/detail_page_vm.dart';
import '../../view_models/home_page_viewmodel/home_page_vm.dart';
import '../../view_models/theme_switcher_vm/theme_switcher.dart';
import '../interfaces/coctail_repository_interface.dart';
import '../repositories/remote_data/coktail_repository.dart';

final coktailRepositoryInterface =
    Provider<CoktailRepositoryInterface>((ref) => CoktailRepository());

final homePageProvider = StateNotifierProvider(
    (ref) => HomePageVm(ref.watch(coktailRepositoryInterface)));

final detailPageProvider = StateNotifierProvider(
    (ref) => DetailPageVm(ref.watch(coktailRepositoryInterface)));

final themeSwitcherProvider = ChangeNotifierProvider((ref) => ThemeSwitcher());

// aca van los futureProviders

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platform_aware/domain/models/drink_model.dart';
import 'package:platform_aware/domain/providers_references/providers.dart';

final getAllDrinksFutureProvider = FutureProvider<List<Drinks>>((ref) {
  return ref.watch(coktailRepositoryInterface).getAllCoktails();
});

// final getDrinkByIdFutureProvider =
//     FutureProvider.autoDispose.family<Drinks, String>((ref, drinkId) {
//   return ref.watch(coktailRepositoryInterface).getCoktailById(drinkId);
// });


import '../models/drink_model.dart';

abstract class CoktailRepositoryInterface {
  Future<List<Drinks>> getAllCoktails();
  Future<Drinks> getCoktailById(String drinkId);
}

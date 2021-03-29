import '../../domain/models/drink_model.dart';

abstract class DetailPageState {}

class DetailPageInitial implements DetailPageState {}

class DetailPageLoading implements DetailPageState {}

class DetailPageError implements DetailPageState {
  final String error;
  const DetailPageError({this.error});
}

class DetailPageLoaded implements DetailPageState {
  final Drinks drink;
  const DetailPageLoaded(this.drink);
}

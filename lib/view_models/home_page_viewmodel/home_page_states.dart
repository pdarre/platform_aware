import '../../domain/models/drink_model.dart';

abstract class HomePageState {}

class HomePageInitial implements HomePageState {}

class HomePageLoading implements HomePageState {}

class HomePageError implements HomePageState {
  final String error;
  const HomePageError({this.error});
}

class HomePageLoaded implements HomePageState {
  final List<Drinks> list;
  const HomePageLoaded(this.list);
}

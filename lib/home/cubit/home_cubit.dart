import 'package:bloc/bloc.dart';
import 'package:flutter_counter/data/ticket_repository.dart';

import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final SpoonRepository _repository;

  HomeCubit(this._repository) : super(HomeInitial());

  Future<void> fetchRandom() async {
    try {
      emit(HomeLoading());
      var response = await _repository.getLatestNews();
      emit(HomeLoaded(response.articles ?? []));
    } catch (error) {
      print(error.toString());
      emit(HomeError("Oops"));
    }
  }

  Future<void> fetchSearch(String search) async {
    try {
      emit(HomeLoading());
      var response = await _repository.getRecipeDetail(search);
      emit(HomeLoaded([]));
    } catch (error) {
      print(error.toString());
      print(error.toString());
      emit(HomeError("Oops"));
    }
  }
}

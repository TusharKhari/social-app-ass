import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:no_reel/domain/home_model.dart';
import 'package:no_reel/infrastructure/error_handling.dart';
import 'package:no_reel/infrastructure/home_page/home_repo.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeInitialEvent>(_getHomeData);
  }
  Future<void> _getHomeData(
      HomeInitialEvent event, Emitter<HomeState> emit) async {
    emit(HomeLoadingState());
    HomeRepo homeRepo = HomeRepo();
    await homeRepo.getHomePage().then((value) {
      var homeModel = HomeModel.fromJson(value.data);
       emit(HomeSuccessState(homeModel: homeModel));
    }).onError((error, stackTrace) {
      ApiException apiException = ApiException();
      if (error is DioException) {
       apiException.errors=  apiException.getExceptionMessage(error);
        emit(HomeErrorState(error: apiException.errors.toString()));
      } else {
        emit(HomeErrorState(error: error.toString()));
      }
    });
  }
}

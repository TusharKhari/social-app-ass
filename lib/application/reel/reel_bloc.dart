import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:no_reel/domain/reel_model.dart';
import 'package:no_reel/infrastructure/reels/reels_repo.dart';

import '../../infrastructure/error_handling.dart';

part 'reel_event.dart';
part 'reel_state.dart';

class ReelBloc extends Bloc<ReelEvent, ReelState> {
  ReelBloc() : super(ReelInitial()) {
    on<ReelInitialEvent>(_getReelsData);
  }
  Future<void> _getReelsData(
      ReelInitialEvent event, Emitter<ReelState> emit) async {
    emit(ReelLoadingState());
  await  ReelsRepo().getReels().then((value) {
      var reelModel = ReelModel.fromJson(value.data);
       emit(ReelSuccessState(reelModel: reelModel));
    }).onError((error, stackTrace) {
      ApiException apiException = ApiException();
      if (error is DioException) {
      apiException.errors=   apiException.getExceptionMessage(error);
        emit(ReelErrorState(error: apiException.errors.toString()));
      } else {
        emit(ReelErrorState(error: error.toString()));
      }
    });
  }
}

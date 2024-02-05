import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:no_reel/infrastructure/feed/feed_repo.dart';

import '../../domain/feed_model.dart';
import '../../infrastructure/error_handling.dart';

part 'feed_event.dart';
part 'feed_state.dart';

class FeedBloc extends Bloc<FeedEvent, FeedState> {
  FeedBloc() : super(FeedInitialState(feedsList: const [])) {
    on<FeedInitialEvent>(_getFeedData);
  }
  Future<void> _getFeedData(
      FeedInitialEvent event, Emitter<FeedState> emit) async {
        print("object ${event.pageNo}");
    emit(FeedLoadingState(feedsList: state.feedsList));
    FeedRepo feedRepo = FeedRepo();
    await feedRepo.getFeedAsPerPage(pageNo: event.pageNo).then((value) {
      var feedModel = FeedModel.fromJson(value.data);
        emit(FeedSuccessState(
          feedsList: [...state.feedsList, ...feedModel.feedpost ?? []]));
    }).onError((error, stackTrace) {
       ApiException apiException = ApiException();
      if (error is DioException) {
      apiException.errors=  apiException.getExceptionMessage(error);
        emit(FeedErrorState(
            error: apiException.errors.toString(), feedsList: state.feedsList));
      } else {
        emit(FeedErrorState(
            error: error.toString(), feedsList: state.feedsList));
      }
    });
  }
}

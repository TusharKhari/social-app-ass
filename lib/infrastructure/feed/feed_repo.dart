// https://artiztnetwork.com/api/latestfeedpost?perpage=50&page=1

import 'package:dio/dio.dart';
import 'package:no_reel/infrastructure/network_client.dart';

class FeedRepo {
  NetworkClient networkClient = NetworkClient();
  Future<Response> getFeedAsPerPage({required int pageNo}) async {
    try {
      var res = await networkClient.createPostRequest(
          url:
              "https://artiztnetwork.com/api/latestfeedpost?perpage=50&page=$pageNo",
          data: null);
          print("$pageNo ${res.statusCode} ");
      return res;
    } catch (e) {
      rethrow;
    }
  }
}

import 'package:dio/dio.dart';
import 'package:no_reel/infrastructure/network_client.dart';

class ReelsRepo {
  NetworkClient networkClient = NetworkClient();

  Future<Response> getReels() async {
    try {
      var res = await networkClient.createPostRequest(
          url: "https://artiztnetwork.com/api/reels", data: null);
      return res;
    } catch (e) {
      rethrow;
    }
  }
}

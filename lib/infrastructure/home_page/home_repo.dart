import 'package:dio/dio.dart';
import 'package:no_reel/infrastructure/network_client.dart';

class HomeRepo {
  NetworkClient networkClient = NetworkClient();

  Future<Response> getHomePage() async {
    try {
      var res = await networkClient.createPostRequest(
          url: "https://artiztnetwork.com/api/homepage", data: null);

      return res;
    } catch (e) {
      rethrow;
    }
  }
}

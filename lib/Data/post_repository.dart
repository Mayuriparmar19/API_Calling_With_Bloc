import 'package:dio/dio.dart';

import 'api/api_file.dart';
import 'my_user_model.dart';

class PostRepository {
  Api api = Api();
  Future<List<MyAPI>> fetchPosts() async {
    try {
      Response response = await api.sendRequest.get('/posts');
      List<dynamic> postMaps = response.data;
      return postMaps.map((postMaps) => MyAPI.fromJson(postMaps)).toList();
    } catch (ex) {
      throw Exception();
      rethrow;
    }
  }
}

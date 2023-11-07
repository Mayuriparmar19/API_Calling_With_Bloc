import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class Api{
      Dio dio = Dio();
      Api()
      {
         dio.options.baseUrl='https://jsonplaceholder.typicode.com';
         dio.interceptors.add(PrettyDioLogger());
      }

      Dio get sendRequest => dio;
}
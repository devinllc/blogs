import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'api_constant.dart';
import 'api_exception.dart';

class ApiClient {
  late Dio dio;
  late BaseOptions baseOptions;
  ApiClient() {
    baseOptions = BaseOptions(baseUrl: ApiConstant.mainUrl);
    dio = Dio(baseOptions);
  }

  Future<Response> getResponse({required String path}) async {
    try {
      // Sending a GET request to fetch tags
      debugPrint('************API REQUEST***********');
      debugPrint('Request Url: ${baseOptions.baseUrl + path}');
      var response = await dio.get(path);
      debugPrint('************API RESPONSE***********');
      debugPrint(response.statusCode.toString());
      debugPrint('DATA: ${response.data}');
      return response;
      // debugPrint(response.data.toString()); // Uncomment to print response data if needed
    } on DioException catch (e) {
      if (e.response != null) {
        // Server responded with an error (non-2xx status code)
        debugPrint("Response data: ${e.response!.data}");
        debugPrint("Response headers: ${e.response!.headers.toString()}");
        debugPrint("Request URI: ${e.response!.requestOptions.uri}");
        throw ApiException(message: e.response!.statusMessage);
      } else {
        // Error occurred while setting up or sending the request
        debugPrint("Request URI: ${e.requestOptions.uri}");
        debugPrint("Error message: ${e.message}");
        throw ApiException(message: e.message);
      }
    }
  }

  Future<Response> postResponse({required String path, required dynamic body}) async {
    // Map body = {'title': 'bagss', 'slug': 'bags'};

    final options = Options(headers: {"Authorization": 'Bearer '});

    try {
      // Sending a GET request to fetch tags
      debugPrint('************API REQUEST***********');
      debugPrint('Request Url: ${baseOptions.baseUrl + path}');
      var response = await dio.post(path,
          data: body, options: options);
      debugPrint('************API RESPONSE***********');
      debugPrint(response.statusCode.toString());
      debugPrint('DATA: ${response.data}');
      return response;
      // debugPrint(response.data.toString()); // Uncomment to print response data if needed
    } on DioException catch (e) {
      if (e.response != null) {
        // Server responded with an error (non-2xx status code)
        debugPrint("Response data: ${e.response!.data}");
        debugPrint("Response headers: ${e.response!.headers.toString()}");
        debugPrint("Request URI: ${e.response!.requestOptions.uri}");
        throw ApiException(message: e.response!.statusMessage);
      } else {
        // Error occurred while setting up or sending the request
        debugPrint("Request URI: ${e.requestOptions.uri}");
        debugPrint("Error message: ${e.message}");
        throw ApiException(message: e.message);
      }
    }
  }
}

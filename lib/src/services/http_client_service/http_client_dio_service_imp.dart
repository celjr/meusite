import 'package:meusite/src/services/http_client_service/http_client_service.dart';
import 'package:dio/dio.dart';

class HttpClientDioServiceImp implements HttpClientService{
  var dio = Dio();  
  @override
  Future<Response> get({required String url}) async{
    var response = await dio.get(url);
    return response;
  }
  

  @override
  Future post({required String url}) async {
    var response = await dio.post(url);
  }}
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:meusite/src/services/http_client_service/http_client_dio_service_imp.dart';
import 'package:meusite/src/services/http_client_service/http_client_service.dart';
import 'package:mocktail/mocktail.dart';

class MockDio extends Mock implements HttpClientDioServiceImp{}

void main() {

  test('should return a instance of response', () async {
    HttpClientService httpClientService = MockDio();
    when(()=>httpClientService.get(url:'https://api.github.com/users/celjr')).thenAnswer((_) async => Response(requestOptions: RequestOptions(path: '')));
    
    var result = await httpClientService.get(url: 'https://api.github.com/users/celjr');
    print(result.data);
    expect(result, isInstanceOf<Response>());
  });
}
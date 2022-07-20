import 'package:flutter_test/flutter_test.dart';
import 'package:meusite/src/feature/data/repositories/projects_repository_imp.dart';
import 'package:meusite/src/feature/domain/entity/project_entity.dart';
import 'package:meusite/src/feature/domain/repositories/projects_repository.dart';
import 'package:meusite/src/services/http_client_service/http_client_dio_service_imp.dart';
import 'package:meusite/src/services/http_client_service/http_client_service.dart';

void main() {
HttpClientService dio = HttpClientDioServiceImp();
ProjectsRepository repository = ProjectsRepositoryImp(dio);
  test('projects repository imp ...', () async {
    var result = await repository.getAllProjects();
    
    print(result[0].language);

    expect(result,isInstanceOf<List<ProjectEntity>>());
  });
}
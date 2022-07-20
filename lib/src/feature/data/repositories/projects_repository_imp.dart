import 'package:meusite/src/feature/data/dto/project_dto.dart';
import 'package:meusite/src/feature/domain/entity/project_entity.dart';
import 'package:meusite/src/feature/domain/repositories/projects_repository.dart';
import 'package:meusite/src/services/http_client_service/http_client_service.dart';

class ProjectsRepositoryImp implements ProjectsRepository{
  final HttpClientService _httpClientService;

  ProjectsRepositoryImp(this._httpClientService);
  
  @override
  Future<List<ProjectEntity>> getAllProjects() async {
    var response = await _httpClientService.get(url: 'https://api.github.com/users/celjr/repos');
    List<ProjectEntity> allProjects= List.from(response.data.map((e)=> ProjectDto.fromMap(e)));
    
    
    return  allProjects;
  }

}
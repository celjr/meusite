import 'package:meusite/src/feature/domain/entity/project_entity.dart';
import 'package:meusite/src/feature/domain/repositories/projects_repository.dart';
import 'package:meusite/src/feature/domain/usecases/get_all_projects/get_all_projects_usecase.dart';

class GetAllProjectsUsecaseImp implements GetAllProjectsUsecase{
  final ProjectsRepository _projectsRepository;

  GetAllProjectsUsecaseImp(this._projectsRepository);
  
  @override
  Future<List<ProjectEntity>> call() async {
    return await _projectsRepository.getAllProjects();
  }

}
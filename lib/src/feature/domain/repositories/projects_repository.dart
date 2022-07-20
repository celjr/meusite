import 'package:meusite/src/feature/domain/entity/project_entity.dart';

abstract class ProjectsRepository{
  Future<List<ProjectEntity>> getAllProjects(); 
}
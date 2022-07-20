import 'package:meusite/src/feature/domain/entity/project_entity.dart';

abstract class GetAllProjectsUsecase{
  Future<List<ProjectEntity>> call();
} 
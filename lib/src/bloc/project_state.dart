import 'package:meusite/src/feature/domain/entity/project_entity.dart';

abstract class ProjectsState{
  List<ProjectEntity> projects;
  ProjectsState({required this.projects});
}

class ProjectsInitialState extends ProjectsState{
  ProjectsInitialState() : super(projects:[]);
}
class ProjectsSuccessState extends ProjectsState{
  ProjectsSuccessState({required List<ProjectEntity> projects}) : super(projects: projects);
}
class ProjectsErrorState extends ProjectsState{
  ProjectsErrorState() : super(projects:[]);
}

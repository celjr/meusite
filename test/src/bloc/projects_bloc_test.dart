import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:meusite/src/bloc/project_event.dart';
import 'package:meusite/src/bloc/project_state.dart';
import 'package:meusite/src/bloc/projects_bloc.dart';
import 'package:meusite/src/feature/data/repositories/projects_repository_imp.dart';
import 'package:meusite/src/feature/domain/entity/project_entity.dart';
import 'package:meusite/src/feature/domain/usecases/get_all_projects/get_all_projects_usecase_imp.dart';
import 'package:meusite/src/services/http_client_service/http_client_dio_service_imp.dart';

void main() {

    final httpService = HttpClientDioServiceImp();
    final repository = ProjectsRepositoryImp(httpService);
    final usecase  = GetAllProjectsUsecaseImp(repository);


  blocTest('project bloc', build: (){
    final bloc =  ProjectsBloc(usecase);
    bloc.add(GetAllProjectsEvent());
    return bloc;
  },
  expect: ()=> []);
}
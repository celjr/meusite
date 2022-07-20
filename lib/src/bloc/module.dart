import 'package:get_it/get_it.dart';
import 'package:meusite/src/feature/data/repositories/projects_repository_imp.dart';
import 'package:meusite/src/feature/domain/repositories/projects_repository.dart';
import 'package:meusite/src/feature/domain/usecases/get_all_projects/get_all_projects_usecase.dart';
import 'package:meusite/src/feature/domain/usecases/get_all_projects/get_all_projects_usecase_imp.dart';
import 'package:meusite/src/services/http_client_service/http_client_dio_service_imp.dart';
import 'package:meusite/src/services/http_client_service/http_client_service.dart';
import 'package:meusite/src/bloc/projects_bloc.dart';

final i = GetIt.instance;
initModule(){

  i.registerFactory<HttpClientService>(() => HttpClientDioServiceImp());
  i.registerFactory<ProjectsRepository>(() => ProjectsRepositoryImp(i()));
  i.registerFactory<GetAllProjectsUsecase>(() => GetAllProjectsUsecaseImp(i()));
  i.registerFactory<ProjectsBloc>(()  => ProjectsBloc(i()));
}

disposeModule(){
  i<ProjectsBloc>().close();
  i.unregister<ProjectsBloc>();
  i.unregister<GetAllProjectsUsecase>();
  i.unregister<ProjectsRepository>();
  i.unregister<HttpClientService>();
}
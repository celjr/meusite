import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meusite/src/bloc/projects_bloc.dart';
import 'package:meusite/src/feature/data/repositories/projects_repository_imp.dart';
import 'package:meusite/src/feature/domain/repositories/projects_repository.dart';
import 'package:meusite/src/feature/domain/usecases/get_all_projects/get_all_projects_usecase.dart';
import 'package:meusite/src/feature/domain/usecases/get_all_projects/get_all_projects_usecase_imp.dart';
import 'package:meusite/src/pages/controller_pages.dart';
import 'package:meusite/src/pages/home_page.dart';
import 'package:meusite/src/services/http_client_service/http_client_service.dart';
import 'package:provider/provider.dart';

import '../services/http_client_service/http_client_dio_service_imp.dart';


class MySiteWidget extends StatelessWidget {
  const MySiteWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider( providers: [
      Provider<HttpClientService>(create: (context) => HttpClientDioServiceImp()), 
      Provider<ProjectsRepository>(create: (context) => ProjectsRepositoryImp(context.read())),
      Provider<GetAllProjectsUsecase>(create: (context) => GetAllProjectsUsecaseImp(context.read())),
      BlocProvider(create: (context) => ProjectsBloc(context.read())),
    ],
      builder:(context,_)=> MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Meu Site",
        initialRoute: '/',
        routes: {
          '/':(context) => const HomePage(),
        },
      ),
    );
  }
}

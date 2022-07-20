import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meusite/src/feature/domain/usecases/get_all_projects/get_all_projects_usecase.dart';
import 'package:meusite/src/bloc/project_event.dart';
import 'package:meusite/src/bloc/project_state.dart';

class ProjectsBloc extends Bloc<ProjectsEvent, ProjectsState> {
  final GetAllProjectsUsecase _getAllProjects;

  ProjectsBloc(this._getAllProjects) : super(ProjectsInitialState()) {
    on<GetAllProjectsEvent>((event, emit) async {
      emit(ProjectsSuccessState(projects: await _getAllProjects()));
    });
  }
}

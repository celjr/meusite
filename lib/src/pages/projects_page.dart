import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meusite/src/bloc/module.dart';
import 'package:get_it/get_it.dart';
import 'package:meusite/src/bloc/project_state.dart';
import 'package:meusite/src/bloc/projects_bloc.dart';

import '../bloc/project_event.dart';

class ProjectsPage extends StatefulWidget {
  const ProjectsPage({Key? key}) : super(key: key);

  @override
  State<ProjectsPage> createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
  late ProjectsBloc bloc;
  @override
  void dispose() {
    bloc.close();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    final bloc = context.watch<ProjectsBloc>();
    bloc.add(GetAllProjectsEvent());
    return Center(
      child: SizedBox(
        width:screenSize.width * 0.7,
        child: BlocBuilder<ProjectsBloc, ProjectsState>(
          bloc: bloc,
          builder: (context, state) {
            if (state is ProjectsInitialState) {
              return const Center(
                child: CircularProgressIndicator.adaptive(),
              );
            } else if (state is ProjectsSuccessState) {
              final projects = state.projects;
              return GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemCount: projects.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      height: 200,
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        children: [
                          Text(projects[index].name),
                          const SizedBox(height:20),
                          Text(projects[index].descriprion),
                          const SizedBox(height:20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(projects[index].language),
                            ],
                          )
                        ],
                      ),
                      constraints: BoxConstraints(
                          minWidth: MediaQuery.of(context).size.width * 0.6,
                          maxWidth: MediaQuery.of(context).size.width * 0.7,
                          maxHeight: MediaQuery.of(context).size.height * 0.7,
                          minHeight: MediaQuery.of(context).size.height * 0.40),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        boxShadow: [BoxShadow(blurRadius: 10)],
                      ),
                    ),
                  );
                },
              );
            } else if (state is ProjectsErrorState) {
              return const Center(
                  child: Text(
                'algum erro aconteceu',
                style: (TextStyle(color: Colors.red, fontSize: 50)),
              ));
            } else {
              return Container();
            }
          },
        ),
      ),
    );
  }
}

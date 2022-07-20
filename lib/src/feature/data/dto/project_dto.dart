import '../../domain/entity/project_entity.dart';

extension ProjectDto on ProjectEntity {
  static ProjectEntity fromMap(Map map) {
    int id = map['id'];
    String name = map['name'];
    String url = map['html_url'];
    String description = map['description']?? '';
    String language = map['language'];
    
    

    return ProjectEntity(
      id: id,
      language: language,
      name: name,
      url: url,
      descriprion: description,
    );
  }
}

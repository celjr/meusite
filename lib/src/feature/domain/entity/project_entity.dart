class ProjectEntity{
  final int id;
  final String name;
  final String url;
  final String descriprion;
  final String language;

  ProjectEntity({required this.id, required this.language,required this.name, required this.url, this.descriprion = ''});
}
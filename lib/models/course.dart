class Module {
  final String title;
  final String content;
  final String codeExample;

  Module({
    required this.title,
    required this.content,
    required this.codeExample,
  });
}

class Course {
  final String title;
  final String description;
  final List<Module> modules;

  Course({
    required this.title,
    required this.description,
    required this.modules,
  });
}

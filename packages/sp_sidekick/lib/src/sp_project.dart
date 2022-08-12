import 'package:sidekick_core/sidekick_core.dart';

class SpProject extends DartPackage {
  factory SpProject(Directory root) {
    final package = DartPackage.fromDirectory(root)!;
    return SpProject._(package.root, package.name);
  }

  SpProject._(Directory root, String name) : super.flutter(root, name);

    
  
    

  File get flutterw => root.file('flutterw');

  List<DartPackage>? _packages;
  List<DartPackage> get allPackages {
    return _packages ??= root
        .directory('packages')
        .listSync()
        .whereType<Directory>()
        .mapNotNull((it) => DartPackage.fromDirectory(it))
        .toList()
      ..add(this);
  }
}

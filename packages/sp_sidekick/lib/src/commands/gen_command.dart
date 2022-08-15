import 'package:sidekick_core/sidekick_core.dart';
import 'package:sp_sidekick/sp_sidekick.dart';

class GenerateCommand extends Command {
  @override
  final String description = 'Runs buildrunner_build in the sites package and adds the data folder to git';

  @override
  final String name = 'gen';

  GenerateCommand() {
    argParser.addFlag('translate', help: 'When true, generates the translation files', abbr: 't');
  }

  @override
  Future<void> run() async {
    final package = spProject;
    final root = package.root;
    print(green('Generating code for package: ${package.name}'));
    flutterw(['pub', 'run', 'build_runner', 'build', '--delete-conflicting-outputs'], workingDirectory: root);
    print(green('Formatting files in package: ${package.name}'));
    flutterw(['format', '-l', '120', 'lib'], workingDirectory: root);
  }
}

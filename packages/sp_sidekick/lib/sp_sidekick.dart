import 'dart:async';

import 'package:sidekick_core/sidekick_core.dart';
import 'package:sp_sidekick/src/commands/deps_command.dart';
import 'package:sp_sidekick/src/commands/gen_command.dart';
import 'package:sp_sidekick/src/commands/recompile_command.dart';
import 'package:sp_sidekick/src/sp_project.dart';

late SpProject spProject;

Future<void> runSp(List<String> args) async {
  final runner = initializeSidekick(
    name: 'sp',
    mainProjectPath: '.',
  );

  spProject = SpProject(runner.mainProject!.root);
  runner
    ..addCommand(RecompileCommand())
    ..addCommand(FlutterCommand())
    ..addCommand(DartCommand())
    ..addCommand(DepsCommand())
    ..addCommand(GenerateCommand())
    ..addCommand(InstallGlobalCommand())
    ..addCommand(DartAnalyzeCommand());

  if (args.isEmpty) {
    print(runner.usage);
    return;
  }

  try {
    return await runner.run(args);
  } on UsageException catch (e) {
    print(e.usage);
    exit(64); // usage error
  }
}

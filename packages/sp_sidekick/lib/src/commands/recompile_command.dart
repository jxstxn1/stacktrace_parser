import 'package:dcli/dcli.dart' as dcli;
import 'package:sidekick_core/sidekick_core.dart';
import 'package:sp_sidekick/sp_sidekick.dart';

class RecompileCommand extends Command {
  @override
  final String description = 'Recompiles the sp sidekick';

  @override
  final String name = 'recompile';

  @override
  Future<void> run() async {
    final installScript = spProject.root.file('packages/sp_sidekick/tool/install.sh');
    final process = dcli.start(installScript.path, nothrow: true, terminal: true);
    exit(process.exitCode ?? 0);
  }
}

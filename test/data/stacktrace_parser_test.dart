import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:stacktrace_parser/data/stacktace/stacktrace_parser.dart';

void main() {
  test('stacktrace1 should highlight line 18+19', () {
    final stacktrace = File('test/resources/stacktrace1.txt').readAsStringSync();
    final result = parseStackTrace(stacktrace);
    // packages/arcgis_map_web/src/arcgis_map_web.dart 177:20                            buildView
    // packages/arcgis_map/src/arcgis_map.dart 110:39                                    build
    debugPrint(result.relevantLines.join('\n'));
    expect(result.relevantLines.map((e) => e.lineNumber), containsAll([18, 19]));
    expect(result.relevantLines.length, lessThan(stacktrace.split('\n').length / 2));
  });

  test('stacktrace2 should highlight line 8', () {
    final stacktrace = File('test/resources/stacktrace2.txt').readAsStringSync();
    final result = parseStackTrace(stacktrace);
    // packages/firebase_analytics_web/firebase_analytics_web.dart 52:12        logEvent
    debugPrint(result.relevantLines.join('\n'));
    expect(result.relevantLines.map((e) => e.lineNumber), containsAll([8]));
    expect(result.relevantLines.length, lessThan(stacktrace.split('\n').length / 2));
  });

  test('stacktrace3 should highlight line 4', () {
    final stacktrace = File('test/resources/stacktrace3.txt').readAsStringSync();
    final result = parseStackTrace(stacktrace);
    // You might find https://github.com/flutter/flutter/issues/69019 interesting.
    // #3      _MyHomePageState.build (package:hello_flutter/main.dart:72:16)
    debugPrint(result.relevantLines.join('\n'));
    expect(result.relevantLines.map((e) => e.lineNumber), containsAll([4]));
    expect(result.relevantLines.length, lessThan(stacktrace.split('\n').length / 2));
  });

  test('stacktrace4 should highlight line 11', () {
    final stacktrace = File('test/resources/stacktrace4.txt').readAsStringSync();
    final result = parseStackTrace(stacktrace);
    // #2      _HomePageState.initState (package:bug/main.dart:34:20)
    debugPrint(result.relevantLines.join('\n'));
    expect(result.relevantLines.map((e) => e.lineNumber), containsAll([11]));
    expect(result.relevantLines.length, lessThan(stacktrace.split('\n').length / 2));
  });

  test('stacktrace5 should highlight line 17', () {
    final stacktrace = File('test/resources/stacktrace5.txt').readAsStringSync();
    final result = parseStackTrace(stacktrace);
    // #0      _PagePosition.applyViewportDimension (package:flutter/src/widgets/page_view.dart:455:25)
    debugPrint(result.relevantLines.join('\n'));
    expect(result.relevantLines.map((e) => e.lineNumber), containsAll([17]));
    expect(result.relevantLines.length, lessThan(stacktrace.split('\n').length / 2));
  });

  test('stacktrace6 should highlight line 23', () {
    final stacktrace = File('test/resources/stacktrace6.txt').readAsStringSync();
    final result = parseStackTrace(stacktrace);
    // packages/flutter/src/rendering/sliver_multi_box_adaptor.dart 236:67               set debugChildIntegrityEnabled
    debugPrint(result.relevantLines.join('\n'));
    expect(result.relevantLines.map((e) => e.lineNumber), containsAll([23]));
    expect(result.relevantLines.length, lessThan(stacktrace.split('\n').length / 2));
  });

  test('stacktrace7 should highlight line 10', () {
    final stacktrace = File('test/resources/stacktrace7.txt').readAsStringSync();
    final result = parseStackTrace(stacktrace);
    // #0      _MyHomePageState.build (package:appx/main.dart:68:5)
    debugPrint(result.relevantLines.join('\n'));
    expect(result.relevantLines.map((e) => e.lineNumber), containsAll([10]));
    expect(result.relevantLines.length, lessThan(stacktrace.split('\n').length / 2));
  });

  test('stacktrace8 should highlight line 10', () {
    final stacktrace = File('test/resources/stacktrace8.txt').readAsStringSync();
    final result = parseStackTrace(stacktrace);
    // related https://github.com/flutter/flutter/issues/71593
    // flutter: #3      WasherPainter.paint (package:laundry_room_console/main.dart:636:11)
    debugPrint(result.relevantLines.join('\n'));
    expect(result.relevantLines.map((e) => e.lineNumber), containsAll([10]));
    expect(result.relevantLines.length, lessThan(stacktrace.split('\n').length / 2));
  });
}

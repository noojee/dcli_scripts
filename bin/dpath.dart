#! /usr/bin/env dcli
/* Copyright (C) S. Brett Sutton - All Rights Reserved
 * Unauthorized copying of this file, via any medium is strictly prohibited
 * Proprietary and confidential
 * Written by Brett Sutton <bsutton@onepub.dev>, Jan 2022
 */



import 'package:dcli/dcli.dart';

/// dpath appname
/// print the systems PATH variable contents and validates each path.

const String tick = '''\xE2\x9C\x93''';

const String posixTick = '''\u2714''';

const String cross = 'x';

void main(List<String> args) {
  ArgParser().addFlag('verbose', abbr: 'v', negatable: false);

  for (final path in PATH) {
    final pathexists = exists(path);

    if (pathexists == true) {
      print('Test:  $posixTick ${normalize(path)}');
    } else {
      print(red('Test: $cross ${normalize(path)}'));
    }
  }
}

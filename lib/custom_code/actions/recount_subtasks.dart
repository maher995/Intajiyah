// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart' hide RepeatMode;
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future recountSubtasks(DocumentReference taskRef) async {
  final subs = await taskRef
      .collection('subtasks')
      .get(const GetOptions(source: Source.server));
  final total = subs.docs.length;
  final done = subs.docs
      .where((d) => (d.data() as Map<String, dynamic>)['is_done'] == true)
      .length;
  await taskRef.update({'subtask_total': total, 'subtask_done': done});
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the `</>` button on the right!
